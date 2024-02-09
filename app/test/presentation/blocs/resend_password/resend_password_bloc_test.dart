import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/base_entity.dart';
import 'package:app/domain/entities/login_entity.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:app/domain/usecases/resend_password_usecase.dart';
import 'package:app/presentation/blocs/resend_password/resend_password_bloc.dart';
import 'package:app/presentation/blocs/resend_password/resend_password_event.dart';
import 'package:app/presentation/blocs/resend_password/resend_password_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/test_helper.mocks.dart';

void main() {
  late MockResendPasswordUseCase mockResendPasswordUseCase;
  late MockLoginUseCase mockLoginUseCase;
  late ResendPasswordBloc bloc;

  setUp(() {
    mockResendPasswordUseCase = MockResendPasswordUseCase();
    mockLoginUseCase = MockLoginUseCase();
    bloc = ResendPasswordBloc(
      resendPasswordUseCase: mockResendPasswordUseCase,
      loginUseCase: mockLoginUseCase,
    );
  });

  group('resend password bloc', () {
    final tParams = ResendPasswordParams();
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
      message: 'Resend password successfully',
      isSuccess: true,
      stausCode: 200,
      error: {
        'message': 'Resend password failed',
      },
    );

    test('initial state should be ResendPasswordInitial', () {
      expect(bloc.state, ResendPasswordInitial());
    });

    blocTest(
      'should add OnSubmitResendPassword event when data gotten successfully',
      build: () {
        when(mockLoginUseCase.execute(tLoginParams))
            .thenAnswer((_) async => const Right(tLoginEntity));
        when(mockResendPasswordUseCase.resendPassword(tParams
              ..email = tLoginParams.username
              ..token = tLoginEntity.accessToken))
            .thenAnswer((_) async => const Right(tBaseEntity));
        return bloc;
      },
      act: (bloc) => bloc.add(
        OnResendPasswordCredentials(params: tLoginParams),
      ),
    );

    blocTest(
      'should emit [ResendPasswordLoading, ResendPasswordSuccess] when data gotten successfully',
      build: () {
        when(mockResendPasswordUseCase.resendPassword(tParams))
            .thenAnswer((_) async => const Right(tBaseEntity));
        return bloc;
      },
      act: (bloc) => bloc.add(OnSubmitResendPassword(params: tParams)),
      expect: () => [
        ResendPasswordLoading(),
        const ResendPasswordSuccess(tBaseEntity),
      ],
    );

    blocTest(
      'should emit [ResendPasswordLoading, ResendPasswordFailure] when data gotten unsuccessfully',
      build: () {
        when(mockResendPasswordUseCase.resendPassword(tParams)).thenAnswer(
          (_) async => const Left(ServerFailure(message: 'Server Failure')),
        );
        return bloc;
      },
      act: (bloc) => bloc.add(OnSubmitResendPassword(params: tParams)),
      expect: () => [
        ResendPasswordLoading(),
        const ResendPasswordFailure('Server Failure'),
      ],
    );
  });
}
