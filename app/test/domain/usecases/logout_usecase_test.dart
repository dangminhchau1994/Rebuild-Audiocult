import 'package:app/domain/entities/logout_entity.dart';
import 'package:app/domain/usecases/logout_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockLogoutRepository mockLogoutRepository;
  late LogoutUsecase logoutUsecase;

  setUp(() {
    mockLogoutRepository = MockLogoutRepository();
    logoutUsecase = LogoutUsecase(repository: mockLogoutRepository);
  });

  test('should call logout from repository', () async {
    const tLogoutEntity = LogoutEntity(revoke: true);
    const tLogoutParams = LogoutParams(
      clientId: 'clientId',
      clientSecret: 'clientSecret',
      token: 'token',
    );

    // arrange
    when(mockLogoutRepository.logout(any))
        .thenAnswer((_) async => const Right(tLogoutEntity));

    // act
    final result = await logoutUsecase.logout(tLogoutParams);

    // assert
    expect(result, const Right(tLogoutEntity));
  });
}
