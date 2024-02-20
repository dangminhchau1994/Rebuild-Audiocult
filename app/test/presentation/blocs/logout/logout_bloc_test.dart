import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/logout_entity.dart';
import 'package:app/domain/usecases/logout_usecase.dart';
import 'package:app/presentation/blocs/logout/logout_bloc.dart';
import 'package:app/presentation/blocs/logout/logout_event.dart';
import 'package:app/presentation/blocs/logout/logout_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/test_helper.mocks.dart';

void main() {
  late MockLogoutUsecase mockLogoutUsecase;
  late LogoutBloc bloc;

  setUp(() {
    mockLogoutUsecase = MockLogoutUsecase();
    bloc = LogoutBloc(logoutUsecase: mockLogoutUsecase);
  });

  group(
    'logoutBloc',
    () {
      const tLogoutEntity = LogoutEntity();
      const tParams = LogoutParams(
        clientId: AppConstants.clientId,
        clientSecret: AppConstants.clientSecret,
        token: 'token',
      );

      test('should emit initial state', () {
        expect(bloc.state, LogoutInitial());
      });

      blocTest(
        'should emit [LogoutLoading, LogoutSuccess] when gotten data successfully',
        build: () {
          when(mockLogoutUsecase.logout(tParams))
              .thenAnswer((_) async => const Right(tLogoutEntity));
          return bloc;
        },
        act: (bloc) => bloc.add(const OnLogOut(params: tParams)),
        expect: () => [
          LogoutLoading(),
          const LogoutSuccess(data: tLogoutEntity),
        ],
      );

      blocTest(
        'should emit [LogoutLoading, LogoutError] when gotten data unsuccessfully',
        build: () {
          when(mockLogoutUsecase.logout(tParams)).thenAnswer((_) async =>
              const Left(ServerFailure(message: 'Error logging out')));
          return bloc;
        },
        act: (bloc) => bloc.add(const OnLogOut(params: tParams)),
        expect: () => [
          LogoutLoading(),
          const LogoutFailure(message: 'Error logging out'),
        ],
      );
    },
  );
}
