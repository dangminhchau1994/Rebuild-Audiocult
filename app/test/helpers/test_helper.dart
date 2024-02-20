import 'package:app/core/services/hive_service.dart';
import 'package:app/data/datasources/create_new_password_datasource.dart';
import 'package:app/data/datasources/get_profile_datasource.dart';
import 'package:app/data/datasources/login_data_source.dart';
import 'package:app/data/datasources/places_data_source.dart';
import 'package:app/data/datasources/resend_code_data_source.dart';
import 'package:app/data/datasources/resend_password_data_source.dart';
import 'package:app/data/datasources/roles_data_source.dart';
import 'package:app/domain/repositories/create_new_password_repository.dart';
import 'package:app/domain/repositories/get_places_repository.dart';
import 'package:app/domain/repositories/get_profile_repository.dart';
import 'package:app/domain/repositories/get_roles_repository.dart';
import 'package:app/domain/repositories/login_repository.dart';
import 'package:app/domain/repositories/logout_repository.dart';
import 'package:app/domain/repositories/register_repository.dart';
import 'package:app/domain/repositories/resend_code_repository.dart';
import 'package:app/domain/repositories/resend_password_repository.dart';
import 'package:app/domain/usecases/create_new_password_usecase.dart';
import 'package:app/domain/usecases/get_place_detail_usecase.dart';
import 'package:app/domain/usecases/get_places_usecase.dart';
import 'package:app/domain/usecases/get_profile_usecase.dart';
import 'package:app/domain/usecases/get_roles_usecase.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:app/domain/usecases/register_usecase.dart';
import 'package:app/domain/usecases/resend_code_usecase.dart';
import 'package:app/domain/usecases/resend_password_usecase.dart';
import 'package:dio/dio.dart';
import 'package:mockito/annotations.dart';

@GenerateMocks(
  [
    LogoutRepository,
    GetProfileRepository,
    GetRolesRepository,
    LoginRepository,
    GetPlacesRepository,
    ResendPasswordRepository,
    ResendCodeRepository,
    RegisterRepository,
    CreateNewPasswordRepository,
    CreateNewPasswordUseCase,
    RegisterUseCase,
    ResendPasswordUseCase,
    GetPlacesUseCase,
    GetProfileUseCase,
    GetRolesUseCase,
    GetPlaceDetailUseCase,
    LoginUseCase,
    ResendCodeUseCase,
    ResendPasswordDataSource,
    ResendCodeDataSource,
    CreateNewPasswordDataSource,
    GetProfileDataSource,
    RolesDataSource,
    LoginDataSource,
    PlacesDataSource,
    HiveService,
  ],
  customMocks: [
    MockSpec<Dio>(as: #MockDioClient),
  ],
)
void main() {}
