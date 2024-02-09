import 'package:app/domain/usecases/login_usecase.dart';
import 'package:app/domain/usecases/resend_code_usecase.dart';
import 'package:equatable/equatable.dart';

abstract class ResendCodeEvent extends Equatable {
  const ResendCodeEvent();
}

class OnResendCodeCredentials extends ResendCodeEvent {
  final LoginParams params;

  const OnResendCodeCredentials({required this.params});

  @override
  List<Object> get props => [params];
}

class OnSubmitResendCode extends ResendCodeEvent {
  final ResendCodeParams params;

  const OnSubmitResendCode(this.params);

  @override
  List<Object> get props => [params];
}
