import 'package:app/data/datasources/roles_data_source.dart';
import 'package:app/domain/repositories/get_roles_repository.dart';
import 'package:app/domain/usecases/get_roles_usecase.dart';
import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  [
    GetRolesRepository,
    GetRolesUseCase,
    RolesDataSource,
  ],
  customMocks: [
    MockSpec<Dio>(as: #MockDioClient),
  ],
)
void main() {}
