import 'dart:io';

import 'package:app/core/errors/exception.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/data/datasources/places_data_source.dart';
import 'package:app/domain/entities/place_suggestion_entity.dart';
import 'package:app/domain/repositories/get_places_repository.dart';
import 'package:app/domain/usecases/get_place_detail_usecase.dart';
import 'package:app/domain/usecases/get_places_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@Injectable(as: GetPlacesRepository)
class GetPlacesRepositoryImpl implements GetPlacesRepository {
  final PlacesDataSource dataSource;

  const GetPlacesRepositoryImpl({required this.dataSource});

  @override
  Future<Either<Failure, List<PlaceSuggestionEntity>>> getPlaces(
    GetPlacesParams params,
  ) async {
    try {
      final result = await dataSource.getPlaces(params);
      return Right(result.map((e) => e.toEntity()).toList());
    } on ServerException {
      return const Left(ServerFailure());
    } on SocketException {
      return const Left(NetworkFailure());
    }
  }

  @override
  Future<Either<Failure, PlaceSuggestionEntity>> getPlaceDetail(
    GetPlaceDetailParams params,
  ) async {
    try {
      final result = await dataSource.getPlaceDetail(params);
      return Right(result.toEntity());
    } on ServerException {
      return const Left(ServerFailure());
    } on SocketException {
      return const Left(NetworkFailure());
    }
  }
}
