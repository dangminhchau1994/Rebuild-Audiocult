import 'package:app/domain/entities/roles_entity.dart';
import 'package:app/domain/usecases/get_roles_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockGetRolesRepository repository;
  late GetRolesUseCase usecase;

  setUp(() {
    repository = MockGetRolesRepository();
    usecase = GetRolesUseCase(rolesRepository: repository);
  });

  const tToken = '12c16cea0e5f1a59fdec7e0595c40960efce99fe';

  test('should get roles from the repository', () async {
    const tRolesEntity = RolesEntity(data: [
      RoleEntity(
        userGroupId: "6",
        title: "Admin",
      ),
      RoleEntity(
        userGroupId: "7",
        title: "User",
      ),
    ]);

    when(repository.getRoles(tToken))
        .thenAnswer((_) async => const Right(tRolesEntity));

    final result = await usecase.execute(tToken);

    expect(result, const Right(tRolesEntity));
  });
}
