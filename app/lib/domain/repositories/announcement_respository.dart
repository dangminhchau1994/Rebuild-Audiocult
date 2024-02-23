import 'package:app/core/errors/failure.dart';
import 'package:app/domain/entities/announcement/announcement_entity.dart';
import 'package:app/domain/usecases/announcement_usecase.dart';
import 'package:dartz/dartz.dart';

abstract class AnnouncementRepository {
  Future<Either<Failure, AnnouncementEntity>> getAnnouncement(
    AnnouncementParams params,
  );
}
