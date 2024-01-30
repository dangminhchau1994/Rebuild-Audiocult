import 'package:app/core/constants/app_constants.dart';
import 'package:app/domain/usecases/get_roles_usecase.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:app/presentation/blocs/get_roles/get_roles_event.dart';
import 'package:app/presentation/blocs/get_roles/get_roles_state.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';

@injectable
class GetRolesBloc extends Bloc<GetRolesEvent, GetRolesState> {
  GetRolesBloc({
    required this.getRolesUseCase,
    required this.loginUseCase,
  }) : super(GetRolesEmpty()) {
    on<OnGetRoleCredential>(_getRoleCredential);
    on<OnGetRoles>(_getRoles);
  }

  final GetRolesUseCase getRolesUseCase;
  final LoginUseCase loginUseCase;

  void _getRoleCredential(
    OnGetRoleCredential event,
    Emitter<GetRolesState> emit,
  ) async {
    final loginResult = await loginUseCase.execute(LoginParams(
      clientId: AppConstants.clientId,
      clientSecret: AppConstants.clientSecret,
      grantType: AppConstants.roleGranType,
    ));
    loginResult.fold(
      (failure) => emit(GetRolesError(message: failure.message ?? '')),
      (data) => add(OnGetRoles(token: data.accessToken ?? '')),
    );
  }

  void _getRoles(
    OnGetRoles event,
    Emitter<GetRolesState> emit,
  ) async {
    final result = await getRolesUseCase.execute(event.token);
    result.fold(
      (failure) => emit(GetRolesError(message: failure.message ?? '')),
      (data) => emit(GetRolesLoaded(data: data)),
    );
  }
}
