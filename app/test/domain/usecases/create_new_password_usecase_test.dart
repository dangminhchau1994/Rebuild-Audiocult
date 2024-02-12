import 'package:app/domain/entities/base_entity.dart';
import 'package:app/domain/usecases/create_new_password_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockCreateNewPasswordRepository mockCreateNewPasswordRepository;
  late CreateNewPasswordUseCase createNewPasswordUseCase;

  setUp(() {
    mockCreateNewPasswordRepository = MockCreateNewPasswordRepository();
    createNewPasswordUseCase = CreateNewPasswordUseCase(
      repository: mockCreateNewPasswordRepository,
    );
  });

  test('should return base entity from repository', () async {
    const tBaseEntity = BaseEntity(
      message: 'failed',
      stausCode: 200,
      isSuccess: false,
      error: {
        'message': 'failed',
      },
    );

    const tParams = CreateNewPasswordParams(
      newPassword: 'password',
      code: 'code',
    );

    //arrange
    when(mockCreateNewPasswordRepository.createNewPassword(any))
        .thenAnswer((_) async => const Right(tBaseEntity));

    //act
    final result = await createNewPasswordUseCase.createNewPassword(tParams);

    //assert
    expect(result, const Right(tBaseEntity));
  });
}
