import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/announcement/announcement_entity.dart';
import 'package:app/domain/repositories/announcement_respository.dart';
import 'package:dartz/dartz.dart';
import 'package:injectable/injectable.dart';

@singleton
class AnnouncementUsecase {
  final AnnouncementRepository repository;

  const AnnouncementUsecase({required this.repository});

  Future<Either<Failure, AnnouncementEntity>> getAnnouncement(
    AnnouncementParams params,
  ) async {
    return await repository.getAnnouncement(params);
  }
}

class AnnouncementParams {
  final int? page;
  final int? limit;

  AnnouncementParams({this.page, this.limit});

  Map<String, dynamic> toJson() {
    return {
      'page': page,
      'limit': limit,
    };
  }
}
