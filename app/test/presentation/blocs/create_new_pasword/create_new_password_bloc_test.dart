import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/base_entity.dart';
import 'package:app/domain/entities/login_entity.dart';
import 'package:app/domain/usecases/create_new_password_usecase.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:app/presentation/blocs/create_new_password/create_new_password_bloc.dart';
import 'package:app/presentation/blocs/create_new_password/create_new_password_event.dart';
import 'package:app/presentation/blocs/create_new_password/create_new_password_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/test_helper.mocks.dart';

void main() {
  late MockCreateNewPasswordUseCase createNewPasswordUseCase;
  late MockLoginUseCase loginUseCase;
  late CreateNewPasswordBloc bloc;

  setUp(() {
    createNewPasswordUseCase = MockCreateNewPasswordUseCase();
    loginUseCase = MockLoginUseCase();
    bloc = CreateNewPasswordBloc(
      createNewPasswordUseCase: createNewPasswordUseCase,
      loginUseCase: loginUseCase,
    );
  });

  group(
    'CreateNewPasswordBloc',
    () {
      const tParams = CreateNewPasswordParams(
        accessToken: 'accessToken',
        newPassword: 'newPassword',
        code: 'code',
      );
      final tLoginParams = LoginParams(
        username: 'dangminhchau15@gmail.com',
        clientId: AppConstants.clientId,
        clientSecret: AppConstants.clientSecret,
        grantType: AppConstants.roleGranType,
      );
      const tLoginEntity = LoginEntity(
        accessToken: '357b3979817e4289f19a79b140914ff11dccc2c5',
        expiresIn: 3600,
        tokenType: 'Bearer',
        scope: 'read write',
        refreshToken: 'f7b3f7e0e4b4f4b4f4b4f4b4f4b4f4b4f4b4f4b4',
        userId: '1',
      );
      const tBaseEntity = BaseEntity(
        message: 'create new password successfully',
        isSuccess: true,
        stausCode: 200,
        error: {
          'message': 'create new  password failed',
        },
      );

      test('should return inital state', () {
        expect(bloc.state, CreateNewPasswordInitial());
      });

      blocTest(
        'should call createNewPassword function when data gotten successfully',
        build: () {
          when(loginUseCase.execute(any)).thenAnswer(
            (_) async => const Right(tLoginEntity),
          );
          when(createNewPasswordUseCase.createNewPassword(any)).thenAnswer(
            (_) async => const Right(tBaseEntity),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(
          OnCreateNewPasswordCredentials(params: tLoginParams),
        ),
        verify: (_) {
          verify(createNewPasswordUseCase.createNewPassword(any)).called(1);
        },
      );

      blocTest(
        'should emit [CreateNewPasswordLoading, CreateNewPasswordSuccess] when data gotten successfully',
        build: () {
          when(createNewPasswordUseCase.createNewPassword(any)).thenAnswer(
            (_) async => const Right(tBaseEntity),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(
          const OnSubmitCreateNewPassword(params: tParams),
        ),
        expect: () => [
          CreateNewPasswordLoading(),
          const CreateNewPasswordSuccess(data: tBaseEntity),
        ],
      );

      blocTest(
        'should emit [CreateNewPasswordLoading, CreateNewPasswordSuccess] when data gotten unsuccessfully',
        build: () {
          when(createNewPasswordUseCase.createNewPassword(any)).thenAnswer(
            (_) async => const Left(ServerFailure()),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(
          const OnSubmitCreateNewPassword(params: tParams),
        ),
        expect: () => [
          CreateNewPasswordLoading(),
          const CreateNewPasswordFailure(),
        ],
      );
    },
  );
}
