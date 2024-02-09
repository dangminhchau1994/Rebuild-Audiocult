import 'package:app/domain/usecases/login_usecase.dart';
import 'package:app/domain/usecases/resend_password_usecase.dart';
import 'package:equatable/equatable.dart';

class RendPasswordEvent extends Equatable {
  @override
  List<Object> get props => [];
}

class OnResendPasswordCredentials extends RendPasswordEvent {
  final LoginParams params;

  OnResendPasswordCredentials({required this.params});

  @override
  List<Object> get props => [params];
}

class OnSubmitResendPassword extends RendPasswordEvent {
  final ResendPasswordParams params;

  OnSubmitResendPassword({required this.params});

  @override
  List<Object> get props => [params];
}
