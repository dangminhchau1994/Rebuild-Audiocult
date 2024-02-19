import 'package:app/domain/usecases/get_profile_usecase.dart';
import 'package:equatable/equatable.dart';

abstract class GetProfileEvent extends Equatable {
  const GetProfileEvent();

  @override
  List<Object> get props => [];
}

class OnGetProfile extends GetProfileEvent {
  final GetProfileParams params;

  const OnGetProfile({required this.params});

  @override
  List<Object> get props => [params];
}
