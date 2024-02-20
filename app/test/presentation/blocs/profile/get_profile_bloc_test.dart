import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/profile/profile_entity.dart';
import 'package:app/domain/entities/register_entity.dart';
import 'package:app/domain/usecases/get_profile_usecase.dart';
import 'package:app/presentation/blocs/profile/get_profile_bloc.dart';
import 'package:app/presentation/blocs/profile/get_profile_event.dart';
import 'package:app/presentation/blocs/profile/get_profile_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/test_helper.mocks.dart';

void main() {
  late MockGetProfileUseCase mockGetProfileUseCase;
  late GetProfileBloc bloc;

  setUp(() {
    mockGetProfileUseCase = MockGetProfileUseCase();
    bloc = GetProfileBloc(
      getProfileUseCase: mockGetProfileUseCase,
    );
  });

  group('getProfileBloc', () {
    final tParams = GetProfileParams(
      data: 'info',
      userId: 3778,
    );
    const tProfileEntity = ProfileEntity(
      status: "success",
      message: "",
      error: null,
      data: ProfileDataEntity(
        userId: "3778",
        title: "Entertainer",
        userName: "dangminhchau",
        fullName: "dangminhchau",
        gender: null,
        userImage: null,
      ),
    );

    test('should get profile initial state', () {
      expect(bloc.state, GetProfileInitial());
    });

    blocTest(
      'should emit [GetProfileLoading, GetProfileSuccess] when gotten data successfully',
      build: () {
        when(mockGetProfileUseCase.getProfile(any))
            .thenAnswer((_) async => const Right(tProfileEntity));
        return bloc;
      },
      act: (bloc) => bloc.add(OnGetProfile(params: tParams)),
      expect: () => [
        GetProfileLoading(),
        const GetProfileSuccess(data: tProfileEntity),
      ],
    );

    blocTest(
      'should emit [GetProfileLoading, GetProfileError] when gotten data unsuccessfully',
      build: () {
        when(mockGetProfileUseCase.getProfile(any)).thenAnswer(
            (_) async => const Left(ServerFailure(message: 'Server failure')));
        return bloc;
      },
      act: (bloc) => bloc.add(OnGetProfile(params: tParams)),
      expect: () => [
        GetProfileLoading(),
        const GetProfileError(message: 'Server failure'),
      ],
    );
  });
}
