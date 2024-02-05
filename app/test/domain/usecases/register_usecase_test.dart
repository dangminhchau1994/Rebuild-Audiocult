import 'package:app/domain/entities/register_entity.dart';
import 'package:app/domain/usecases/register_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockRegisterRepository repository;
  late RegisterUseCase useCase;

  setUp(() {
    repository = MockRegisterRepository();
    useCase = RegisterUseCase(repository: repository);
  });

  final tRegisterParam = RegisterParams(
    valEmail: 'dangminhchau15@gmail.com',
    valFullName: 'Chau Dang',
    valUserName: 'chau.dang',
    valPassword: '123456',
    valCountryIso: 'VN',
    valRole: 1,
    valCityLocation: 'HCM',
    valRegisterLocationLat: 10.7769,
    valRegisterLocationLng: 106.7009,
  );

  test('should return register entity from the repository', () async {
    when(repository.register(tRegisterParam))
        .thenAnswer((_) async => const Right(RegisterEntity()));

    final result = await useCase.execute(tRegisterParam);

    expect(result, const Right(RegisterEntity()));
  });
}
