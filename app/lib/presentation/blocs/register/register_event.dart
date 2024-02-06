import 'package:app/domain/usecases/login_usecase.dart';
import 'package:app/domain/usecases/register_usecase.dart';
import 'package:equatable/equatable.dart';

class RegisterEvent extends Equatable {
  const RegisterEvent();

  @override
  List<Object> get props => [];
}

class RegisterSubmit extends RegisterEvent {
  final RegisterParams params;

  const RegisterSubmit({required this.params});

  @override
  List<Object> get props => [params];
}

class GetCredentialsAndRegister extends RegisterEvent {
  final LoginParams loginParams;
  final RegisterParams registerParams;

  const GetCredentialsAndRegister({
    required this.loginParams,
    required this.registerParams,
  });

  @override
  List<Object> get props => [
        loginParams,
        registerParams,
      ];
}
