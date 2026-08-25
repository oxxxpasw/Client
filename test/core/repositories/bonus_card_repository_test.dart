import 'package:sosedifedi/data/mappers/customer_account_mapper.dart';
import 'package:sosedifedi/data/models/bonus_card/bonus_card_model/bonus_card_model.dart';
import 'package:sosedifedi/data/models/bonus_card/bonus_card_response/bonus_card_response.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/repository/bonus_card_repository.dart';
import 'package:sosedifedi/data/services/customer_api/customer_api_service.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_data/auth_test_data.dart';
import '../test_data/bonus_card_test_data.dart';

class MockCustomerApiService extends Mock implements CustomerApiService {}

class MockAuthRepository extends Mock implements AuthRepository {}

class MockBonusCardModelMapper extends Mock
    implements CustomerAccountModelMapper {}

class MockBonusCardResponse extends Mock implements BonusCardResponse {}

class MockBonusCardCopyWith extends Mock
    implements $BonusCardResponseCopyWith<BonusCardResponse> {}

class MockBonusCardModelCopyWith extends Mock
    implements $BonusCardModelCopyWith<BonusCardModel> {}

class MockBonusCardModel extends Mock implements BonusCardModel {}

void main() {
  late BonusCardRepository repository;
  late CustomerApiService customerApiService;
  late AuthRepository authRepository;
  late CustomerAccountModelMapper bonusCardMapper;

  setUpAll(() {
    registerFallbackValue(MockBonusCardModel());
  });

  setUp(() {
    customerApiService = MockCustomerApiService();
    authRepository = MockAuthRepository();
    bonusCardMapper = MockBonusCardModelMapper();
    repository = BonusCardRepository(
      customerApiService: customerApiService,
      authRepository: authRepository,
      customerAccountMapper: bonusCardMapper,
    );
  });

  group('getBonusCard', () {
    test('returns correct response when successful', () async {
      final bonusCardResponse = MockBonusCardResponse();
      final bonusCard = MockBonusCardModel();

      when(() => authRepository.token)
          .thenAnswer((_) async => AuthTestData.token);
      when(() => customerApiService.getAccounts(token: AuthTestData.token))
          .thenAnswer((_) async => ApiResponse.success([bonusCardResponse]));
      when(() => bonusCardMapper.mapFromOrderResponse(bonusCardResponse))
          .thenReturn(bonusCard);

      final response = await repository.getCustomerAccount();

      verify(() => authRepository.token).called(1);
      verify(() => customerApiService.getAccounts(token: AuthTestData.token))
          .called(1);
      verify(() => bonusCardMapper.mapFromOrderResponse(bonusCardResponse))
          .called(1);
      expect(response.isSuccess, isTrue);
      expect(response._result, bonusCard);
    });

    test('returns unAuthorized error when token is null', () async {
      when(() => authRepository.token).thenAnswer((_) async => null);

      final response = await repository.getCustomerAccount();

      expect(response.hasError, isTrue);
      expect(response.error,
          const CommonResponseError<DefaultApiError>.unAuthorized());
      verify(() => authRepository.token).called(1);
    });

    test('returns correct error response when API call fails', () async {
      final error = CommonResponseError<DefaultApiError>.undefinedError(
          Exception('testError'));

      when(() => authRepository.token)
          .thenAnswer((_) async => AuthTestData.token);
      when(() => customerApiService.getAccounts(token: AuthTestData.token))
          .thenAnswer((_) async => ApiResponse.error(error));

      final response = await repository.getCustomerAccount();

      verify(() => authRepository.token).called(1);
      verify(() => customerApiService.getAccounts(token: AuthTestData.token))
          .called(1);
      expect(response.hasError, isTrue);
      expect(response.error, error);
    });
  });

  group('getBonusCardWithTempNumber', () {
    test('returns correct response when successful', () async {
      // Arrange
      final bonusCardResponse = MockBonusCardResponse();
      final bonusCardModel = MockBonusCardModel();
      final bonusCardModelCopy = MockBonusCardModel();
      final bonusCardCopyWith = MockBonusCardModelCopyWith();

      when(() => bonusCardMapper.mapFromOrderResponse(bonusCardResponse))
          .thenReturn(bonusCardModel);
      when(() => customerApiService.getAccounts(token: AuthTestData.token))
          .thenAnswer((_) async => ApiResponse.success([bonusCardResponse]));
      when(() => authRepository.token)
          .thenAnswer((_) async => AuthTestData.token);
      when(() => bonusCardModel.copyWith).thenReturn(bonusCardCopyWith);
      when(() => bonusCardCopyWith.call(
            cardNumber: BonusCardTestData.tempCardNumber,
          )).thenReturn(bonusCardModelCopy);
      when(() => customerApiService.getTemporaryBonusesCard(
              token: AuthTestData.token))
          .thenAnswer((_) async =>
              const ApiResponse.success(BonusCardTestData.tempCardNumber));

      final response = await repository.getCustomerAccountWithTempNumber();

      verify(() => bonusCardMapper.mapFromOrderResponse(bonusCardResponse))
          .called(1);
      verify(() => customerApiService.getAccounts(token: AuthTestData.token))
          .called(1);
      verify(() => bonusCardModel.copyWith).called(1);
      verify(() => authRepository.token).called(2);
      verify(() => customerApiService.getTemporaryBonusesCard(
          token: AuthTestData.token)).called(1);
      expect(response.isSuccess, isTrue);
      expect(response._result, equals(bonusCardModelCopy));
    });

    test('returns correct error response when API call fails', () async {
      final bonusCardResponse = MockBonusCardResponse();
      final bonusCardModel = MockBonusCardModel();
      final error = CommonResponseError<DefaultApiError>.undefinedError(
          Exception('testError'));

      when(() => bonusCardMapper.mapFromOrderResponse(bonusCardResponse))
          .thenReturn(bonusCardModel);
      when(() => customerApiService.getAccounts(token: AuthTestData.token))
          .thenAnswer((_) async => ApiResponse.success([bonusCardResponse]));
      when(() => authRepository.token)
          .thenAnswer((_) async => AuthTestData.token);
      when(() => customerApiService.getTemporaryBonusesCard(
              token: AuthTestData.token))
          .thenAnswer((_) async => ApiResponse.error(error));

      final response = await repository.getCustomerAccountWithTempNumber();

      verify(() => bonusCardMapper.mapFromOrderResponse(bonusCardResponse))
          .called(1);
      verify(() => customerApiService.getAccounts(token: AuthTestData.token))
          .called(1);
      verify(() => authRepository.token).called(2);
      verify(() => customerApiService.getTemporaryBonusesCard(
          token: AuthTestData.token)).called(1);
      expect(response.hasError, isTrue);
      expect(response.error, error);
    });
  });

  group('getTemporaryCard', () {
    test('returns correct response when successful', () async {
      when(() => authRepository.token)
          .thenAnswer((_) async => AuthTestData.token);
      when(() => customerApiService.getTemporaryBonusesCard(
              token: AuthTestData.token))
          .thenAnswer((_) async =>
              const ApiResponse.success(BonusCardTestData.tempCardNumber));

      final response = await repository.getTemporaryCard();

      verify(() => authRepository.token).called(1);
      verify(() => customerApiService.getTemporaryBonusesCard(
          token: AuthTestData.token)).called(1);
      expect(response.isSuccess, isTrue);
      expect(response._result, BonusCardTestData.tempCardNumber);
    });

    test('returns unAuthorized error when token is null', () async {
      when(() => authRepository.token).thenAnswer((_) async => null);

      final response = await repository.getTemporaryCard();

      // Assert
      expect(response.hasError, isTrue);
      expect(response.error,
          const CommonResponseError<DefaultApiError>.unAuthorized());
      verify(() => authRepository.token).called(1);
    });

    test('returns correct error response when API call fails', () async {
      final error = CommonResponseError<DefaultApiError>.undefinedError(
          Exception('testError'));

      when(() => authRepository.token)
          .thenAnswer((_) async => AuthTestData.token);
      when(() => customerApiService.getTemporaryBonusesCard(
              token: AuthTestData.token))
          .thenAnswer((_) async => ApiResponse.error(error));

      final response = await repository.getTemporaryCard();

      verify(() => authRepository.token).called(1);
      verify(() => customerApiService.getTemporaryBonusesCard(
          token: AuthTestData.token)).called(1);
      expect(response.hasError, isTrue);
      expect(response.error, error);
    });
  });
}
