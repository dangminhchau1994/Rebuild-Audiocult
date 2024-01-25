import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/roles_entity.dart';
import 'package:app/presentation/blocs/get_roles/get_roles_bloc.dart';
import 'package:app/presentation/blocs/get_roles/get_roles_event.dart';
import 'package:app/presentation/blocs/get_roles/get_roles_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/test_helper.mocks.dart';

void main() {
  late MockGetRolesUseCase mockGetRolesUseCase;
  late GetRolesBloc bloc;

  setUp(() {
    mockGetRolesUseCase = MockGetRolesUseCase();
    bloc = GetRolesBloc(useCase: mockGetRolesUseCase);
  });

  const tRolesEntity = RolesEntity(data: [
    RoleEntity(
      userGroupId: "1",
      title: "Admin",
    ),
    RoleEntity(
      userGroupId: "2",
      title: "User",
    ),
  ]);

  test('initial state should be GetRolesEmpty', () {
    // assert
    expect(bloc.state, GetRolesEmpty());
  });

  blocTest(
    'should emit [GetRolesLoading, GetRolesLoaded] when data is gotten succesfully',
    build: () {
      when(mockGetRolesUseCase.execute())
          .thenAnswer((_) async => const Right(tRolesEntity));
      return bloc;
    },
    act: (bloc) => bloc.add(OnGetRoles()),
    expect: () => [
      GetRolesLoading(),
      const GetRolesLoaded(data: tRolesEntity),
    ],
  );

  blocTest(
    'should emit [GetRolesLoading, GetRolesError] when getting data fails',
    build: () {
      when(mockGetRolesUseCase.execute()).thenAnswer(
          (_) async => const Left(ServerFailure(message: "Server Failure")));
      return bloc;
    },
    act: (bloc) => bloc.add(OnGetRoles()),
    expect: () => [
      GetRolesLoading(),
      const GetRolesError(message: "Server Failure"),
    ],
  );
}
