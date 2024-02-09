import 'package:app/domain/entities/base_entity.dart';
import 'package:app/domain/usecases/resend_code_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockResendCodeRepository mockResendCodeRepository;
  late ResendCodeUseCase resendCodeUseCase;

  setUp(() {
    mockResendCodeRepository = MockResendCodeRepository();
    resendCodeUseCase = ResendCodeUseCase(repository: mockResendCodeRepository);
  });

  test('should return base entity from repository', () async {
    final tParams = ResendCodeParams(
      code: '3f12d',
      token: 'a3f12d',
    );
    const tBaseEntity = BaseEntity(
      message: 'failed',
      stausCode: 200,
      isSuccess: false,
      error: {
        'message': 'failed',
      },
    );

    // arrange
    when(mockResendCodeRepository.resendCode(tParams)).thenAnswer(
      (_) async => const Right(tBaseEntity),
    );

    // act
    final result = await resendCodeUseCase.resendCode(tParams);

    // assert
    expect(result, const Right(tBaseEntity));
  });
}
