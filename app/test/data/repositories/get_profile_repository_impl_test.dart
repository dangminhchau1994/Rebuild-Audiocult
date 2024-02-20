import 'dart:io';
import 'package:app/core/errors/exception.dart';
import 'package:app/core/errors/failure.dart';
import 'package:app/data/models/profile/profile_model.dart';
import 'package:app/data/repositories/get_profile_repository_impl.dart';
import 'package:app/domain/entities/profile/profile_entity.dart';
import 'package:app/domain/entities/register_entity.dart';
import 'package:app/domain/usecases/get_profile_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late MockGetProfileDataSource mockGetProfileDataSource;
  late MockHiveService mockHiveService;
  late GetProfileRepositoryImpl getProfileRepositoryImpl;

  setUp(() {
    mockGetProfileDataSource = MockGetProfileDataSource();
    mockHiveService = MockHiveService();
    getProfileRepositoryImpl = GetProfileRepositoryImpl(
      hiveService: mockHiveService,
      getProfielDataSource: mockGetProfileDataSource,
    );
  });

  group('GetProfileRepositoryImpl', () {
    final tParams = GetProfileParams(
      data: 'info',
      userId: 3778,
    );
    const tProfileModel = ProfileModel(
      status: "success",
      message: "",
      error: null,
      data: ProfileModelData(
        userId: "3778",
        title: "Entertainer",
        userName: "dangminhchau",
        fullName: "dangminhchau",
        gender: null,
        userImage: null,
      ),
    );

    const tProfileEntity = ProfileEntity(
      status: "success",
      message: "",
      error: null,
      data: ProfileDataEntity(
        userId: "3778",
        title: "Entertainer",
        userName: "dangminhchau",
        fullName: "dangminhchau",
        gender: null,
        userImage: null,
      ),
    );

    test('should get profile entity when call api successfully', () async {
      //arrange
      when(mockGetProfileDataSource.getProfile(any))
          .thenAnswer((_) async => tProfileModel);

      //act
      final result = await getProfileRepositoryImpl.getProfile(tParams);

      //assert
      expect(result, const Right(tProfileEntity));
    });

    test('should get cached profile entity data when call api unsuccessfully',
        () async {
      //arrange
      when(mockGetProfileDataSource.getProfile(any))
          .thenThrow(ServerException());
      when(mockHiveService.getData(any, any))
          .thenAnswer((_) async => tProfileEntity);

      //act
      final result = await getProfileRepositoryImpl.getProfile(tParams);

      //assert
      expect(result, const Right(tProfileEntity));
    });

    test(
        'should throw server failure when get cached profile entity data failed',
        () async {
      //arrange
      when(mockGetProfileDataSource.getProfile(any))
          .thenThrow(ServerException());
      when(mockHiveService.getData(any, any))
          .thenAnswer((_) async => const ProfileEntity(data: null));

      //act
      final result = await getProfileRepositoryImpl.getProfile(tParams);

      //assert
      expect(result, const Left(ServerFailure()));
    });

    test('should get cached profile entity data when device is offline',
        () async {
      //arrange
      when(mockGetProfileDataSource.getProfile(any))
          .thenThrow(const SocketException('No internet'));
      when(mockHiveService.getData(any, any))
          .thenAnswer((_) async => tProfileEntity);

      //act
      final result = await getProfileRepositoryImpl.getProfile(tParams);

      //assert
      expect(result, const Right(tProfileEntity));
    });

    test(
        'should throw network failure when get cached profile entity data failed',
        () async {
      //arrange
      when(mockGetProfileDataSource.getProfile(any))
          .thenThrow(const SocketException('No internet'));
      when(mockHiveService.getData(any, any))
          .thenAnswer((_) async => const ProfileEntity(data: null));

      //act
      final result = await getProfileRepositoryImpl.getProfile(tParams);

      //assert
      expect(result, const Left(NetworkFailure()));
    });
  });
}
