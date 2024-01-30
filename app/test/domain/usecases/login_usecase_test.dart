import 'package:app/domain/entities/login_entity.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockLoginRepository repository;
  late LoginUseCase useCase;

  setUp(() {
    repository = MockLoginRepository();
    useCase = LoginUseCase(repository: repository);
  });

  test('should return a LoginEntity from repository', () async {
    // arrange
    const tLoginEntity = LoginEntity(
      accessToken: '357b3979817e4289f19a79b140914ff11dccc2c5',
      expiresIn: 3600,
      tokenType: 'Bearer',
      scope: 'read write',
      refreshToken: 'f7b3f7e0e4b4f4b4f4b4f4b4f4b4f4b4f4b4f4b4',
      userId: '1',
    );

    final tLoginParams = LoginParams(
      clientId: 'clientId',
      clientSecret: 'clientSecret',
      grantType: 'grantType',
      username: 'username',
      password: 'password',
    );

    // act
    when(repository.login(tLoginParams))
        .thenAnswer((_) async => const Right(tLoginEntity));

    final result = await useCase.execute(tLoginParams);

    // assert
    expect(result, const Right(tLoginEntity));
  });
}
