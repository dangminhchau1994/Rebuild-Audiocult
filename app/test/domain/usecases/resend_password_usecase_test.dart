import 'package:app/domain/entities/base_entity.dart';
import 'package:app/domain/usecases/resend_password_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockResendPasswordRepository mockResendPasswordRepository;
  late ResendPasswordUseCase usecase;

  setUp(() {
    mockResendPasswordRepository = MockResendPasswordRepository();
    usecase = ResendPasswordUseCase(repository: mockResendPasswordRepository);
  });

  test('should get base entity from repository', () async {
    final tParams = ResendPasswordParams(email: 'dangminhchau15@gmail.com');
    const tBaseEntity = BaseEntity(
      message: 'failed',
      stausCode: 200,
      isSuccess: false,
      error: {
        'message': 'failed',
      },
    );

    //arrange
    when(mockResendPasswordRepository.resendPassword(tParams))
        .thenAnswer((_) async => const Right(tBaseEntity));

    //act
    final result = await usecase.resendPassword(tParams);

    //assert
    expect(result, const Right(tBaseEntity));
  });
}
