import 'package:app/domain/usecases/logout_usecase.dart';
import 'package:equatable/equatable.dart';

abstract class LogoutEvent extends Equatable {
  const LogoutEvent();
}

class OnLogOut extends LogoutEvent {
  final LogoutParams params;

  const OnLogOut({required this.params});

  @override
  List<Object> get props => [params];
}
