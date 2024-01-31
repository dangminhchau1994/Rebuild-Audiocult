import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/login_entity.dart';
import 'package:app/domain/entities/roles_entity.dart';
import 'package:app/domain/usecases/login_usecase.dart';
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
  late MockLoginUseCase mockLoginUseCase;
  late GetRolesBloc bloc;

  setUp(() {
    mockGetRolesUseCase = MockGetRolesUseCase();
    mockLoginUseCase = MockLoginUseCase();
    bloc = GetRolesBloc(
      getRolesUseCase: mockGetRolesUseCase,
      loginUseCase: mockLoginUseCase,
    );
  });

  const tToken = '12c16cea0e5f1a59fdec7e0595c40960efce99fe';
  const tRolesEntity = RolesEntity(
    data: [
      RoleEntity(
        userGroupId: "1",
        title: "Admin",
      ),
      RoleEntity(
        userGroupId: "2",
        title: "User",
      ),
    ],
  );
  const tLoginEntity = LoginEntity(
    accessToken: '357b3979817e4289f19a79b140914ff11dccc2c5',
    expiresIn: 3600,
    tokenType: 'Bearer',
    scope: 'read write',
    refreshToken: 'f7b3f7e0e4b4f4b4f4b4f4b4f4b4f4b4f4b4f4b4',
    userId: '1',
  );
  final tLoginParams = LoginParams(
    clientId: AppConstants.clientId,
    clientSecret: AppConstants.clientSecret,
    grantType: AppConstants.roleGranType,
  );

  test('initial state should be GetRolesEmpty', () {
    // assert
    expect(bloc.state, GetRolesEmpty());
  });

  blocTest(
    'should add OnGetRoleCredential event when data is gotten succesfully',
    build: () {
      when(mockLoginUseCase.execute(tLoginParams)).thenAnswer(
        (_) async => const Right(tLoginEntity),
      );
      when(mockGetRolesUseCase.execute(tLoginEntity.accessToken)).thenAnswer(
        (_) async => const Right(tRolesEntity),
      );
      return bloc;
    },
    act: (bloc) {
      bloc.add(OnGetRoleCredential(params: tLoginParams));
    },
  );

  blocTest(
    'should emit GetRolesError when event OnGetRoleCredential return failure',
    build: () {
      when(mockLoginUseCase.execute(tLoginParams)).thenAnswer(
        (_) async => const Left(ServerFailure(message: "Server Failure")),
      );
      return bloc;
    },
    act: (bloc) {
      bloc.add(OnGetRoleCredential(params: tLoginParams));
    },
    expect: () => [
      const GetRolesError(message: "Server Failure"),
    ],
  );

  blocTest(
    'should emit [GetRolesLoading, GetRolesLoaded] when data is gotten successfully',
    build: () {
      when(mockGetRolesUseCase.execute(tToken))
          .thenAnswer((_) async => const Right(tRolesEntity));
      return bloc;
    },
    act: (bloc) => bloc.add(const OnGetRoles(token: tToken)),
    expect: () => [
      GetRolesLoading(),
      const GetRolesLoaded(data: tRolesEntity),
    ],
  );

  blocTest(
    'should emit [GetRolesLoading, GetRolesError] when getting data fails',
    build: () {
      when(mockGetRolesUseCase.execute(tToken)).thenAnswer(
        (_) async => const Left(ServerFailure(message: "Server Failure")),
      );
      return bloc;
    },
    act: (bloc) => bloc.add(const OnGetRoles(token: tToken)),
    expect: () => [
      GetRolesLoading(),
      const GetRolesError(message: "Server Failure"),
    ],
  );
}
