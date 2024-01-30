import 'package:app/domain/usecases/login_usecase.dart';
import 'package:equatable/equatable.dart';

class LoginEvent extends Equatable {
  const LoginEvent({required this.params});

  final LoginParams params;

  @override
  List<Object> get props => [params];
}
