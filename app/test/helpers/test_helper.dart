import 'package:app/data/datasources/login_data_source.dart';
import 'package:app/data/datasources/places_data_source.dart';
import 'package:app/data/datasources/roles_data_source.dart';
import 'package:app/domain/repositories/get_places_repository.dart';
import 'package:app/domain/repositories/get_roles_repository.dart';
import 'package:app/domain/repositories/login_repository.dart';
import 'package:app/domain/usecases/get_places_usecase.dart';
import 'package:app/domain/usecases/get_roles_usecase.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  [
    GetRolesRepository,
    LoginRepository,
    GetPlacesRepository,
    GetPlacesUseCase,
    GetRolesUseCase,
    LoginUseCase,
    RolesDataSource,
    LoginDataSource,
    PlacesDataSource,
  ],
  customMocks: [
    MockSpec<Dio>(as: #MockDioClient),
  ],
)
void main() {}
