import 'package:app/core/constants/app_constants.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/base_entity.dart';
import 'package:app/domain/entities/login_entity.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:app/domain/usecases/resend_code_usecase.dart';
import 'package:app/presentation/blocs/resend_code/resend_code_bloc.dart';
import 'package:app/presentation/blocs/resend_code/resend_code_event.dart';
import 'package:app/presentation/blocs/resend_code/resend_code_state.dart';
import 'package:bloc_test/bloc_test.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../../helpers/test_helper.mocks.dart';

void main() {
  late MockLoginUseCase mockLoginUseCase;
  late MockResendCodeUseCase mockResendCodeUseCase;
  late ResendCodeBloc bloc;

  setUp(() {
    mockLoginUseCase = MockLoginUseCase();
    mockResendCodeUseCase = MockResendCodeUseCase();
    bloc = ResendCodeBloc(
      loginUseCase: mockLoginUseCase,
      resendCodeUseCase: mockResendCodeUseCase,
    );
  });

  group(
    'resendCodeBloc',
    () {
      final tParams = ResendCodeParams();
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

      test('initial state is ResendCodeInitial', () {
        expect(bloc.state, equals(ResendCodeInitial()));
      });

      blocTest(
        'should add OnSubmitResendCode event when call api successfully',
        build: () {
          when(mockLoginUseCase.execute(tLoginParams))
              .thenAnswer((_) async => const Right(tLoginEntity));
          when(mockResendCodeUseCase.resendCode(any))
              .thenAnswer((_) async => const Right(tBaseEntity));
          return bloc;
        },
        act: (bloc) => bloc.add(OnResendCodeCredentials(params: tLoginParams)),
      );

      blocTest(
        'should emit[ResendCodeLoading, ResendCodeSuccess] when gotten data successfully',
        build: () {
          when(mockResendCodeUseCase.resendCode(any))
              .thenAnswer((_) async => const Right(tBaseEntity));
          return bloc;
        },
        act: (bloc) => bloc.add(OnSubmitResendCode(tParams)),
        expect: () => [
          ResendCodeLoading(),
          const ResendCodeSuccess(tBaseEntity),
        ],
      );

      blocTest(
        'should emit[ResendCodeLoading, ResendCodeFailure] when gotten data failure',
        build: () {
          when(mockResendCodeUseCase.resendCode(any)).thenAnswer(
            (_) async => const Left(ServerFailure(message: 'Server Failure')),
          );
          return bloc;
        },
        act: (bloc) => bloc.add(OnSubmitResendCode(tParams)),
        expect: () => [
          ResendCodeLoading(),
          const ResendCodeFailure('Server Failure'),
        ],
      );
    },
  );
}
