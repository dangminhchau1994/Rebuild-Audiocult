import 'package:app/domain/usecases/create_new_password_usecase.dart';
import 'package:app/domain/usecases/login_usecase.dart';
import 'package:equatable/equatable.dart';

class CreateNewPasswordEvent extends Equatable {
  const CreateNewPasswordEvent();

  @override
  List<Object> get props => [];
}

class OnCreateNewPasswordCredentials extends CreateNewPasswordEvent {
  final LoginParams params;

  const OnCreateNewPasswordCredentials({required this.params});

  @override
  List<Object> get props => [params];
}

class OnSubmitCreateNewPassword extends CreateNewPasswordEvent {
  final CreateNewPasswordParams params;

  const OnSubmitCreateNewPassword({required this.params});
}
