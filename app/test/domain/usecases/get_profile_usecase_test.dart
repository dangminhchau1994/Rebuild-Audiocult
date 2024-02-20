import 'package:app/domain/entities/profile/profile_entity.dart';
import 'package:app/domain/entities/register_entity.dart';
import 'package:app/domain/usecases/get_profile_usecase.dart';
import 'package:dartz/dartz.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';
import '../../helpers/test_helper.mocks.dart';

void main() {
  late GetProfileUseCase getProfileUseCase;
  late MockGetProfileRepository mockGetProfileRepository;

  setUp(() {
    mockGetProfileRepository = MockGetProfileRepository();
    getProfileUseCase = GetProfileUseCase(
      getProfileRepository: mockGetProfileRepository,
    );
  });

  test('should get profile from the repository', () async {
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

    final tParams = GetProfileParams(data: '1');

    //arrange
    when(mockGetProfileRepository.getProfile(any)).thenAnswer(
      (_) async => const Right(tProfileEntity),
    );

    //act
    final result = await getProfileUseCase.getProfile(tParams);

    //assert
    expect(result, const Right(tProfileEntity));
  });
}
