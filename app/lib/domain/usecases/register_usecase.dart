import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/register_entity.dart';
import 'package:app/domain/repositories/register_repository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class RegisterUseCase {
  final RegisterRepository repository;

  RegisterUseCase({required this.repository});

  Future<Either<Failure, RegisterEntity>> execute(RegisterParams params) {
    return repository.register(params);
  }
}

class RegisterParams {
  final String? accessToken;
  final String? valEmail;
  final String? valFullName;
  final String? valUserName;
  final String? valPassword;
  final String? valCountryIso;
  final int? valRole;
  final String? valCityLocation;
  final double? valRegisterLocationLat;
  final double? valRegisterLocationLng;

  RegisterParams({
    this.accessToken,
    this.valEmail,
    this.valFullName,
    this.valUserName,
    this.valPassword,
    this.valCountryIso,
    this.valRole,
    this.valCityLocation,
    this.valRegisterLocationLat,
    this.valRegisterLocationLng,
  });

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['val[email]'] = valEmail;
    data['val[full_name]'] = valFullName;
    data['val[user_name]'] = valUserName;
    data['val[password]'] = valPassword;
    data['val[country_iso]'] = valCountryIso;
    data['val[user_group_id]'] = valRole;
    data['val[city_location]'] = valCityLocation;
    data['val[register_location_lat]'] = valRegisterLocationLat;
    data['val[register_location_lng]'] = valRegisterLocationLng;
    return data;
  }
}
