import 'package:sosedifedi/data/mappers/order_mapper.dart';
import 'package:sosedifedi/data/models/bonus_card/bonus_card_response/bonus_card_response.dart';
import 'package:sosedifedi/data/models/order/order_response/order_response.dart';
import 'package:sosedifedi/data/models/product/product.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/repository/bonus_card_repository.dart';
import 'package:sosedifedi/data/repository/customer_purchase_repository.dart';
import 'package:sosedifedi/data/services/customer_api/customer_api_response/customer_api_response.dart';
import 'package:sosedifedi/data/services/customer_api/customer_api_service.dart';
import 'package:sosedifedi/domain/models/order/order_model/order_model.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_data/auth_test_data.dart';
import '../test_data/customer_api_test_data.dart';

class MockCustomerApiService extends Mock implements CustomerApiService {}

class MockAuthRepository extends Mock implements AuthRepository {}

class MockBonusCardRepository extends Mock implements BonusCardRepository {}

class MockOrderModelMapper extends Mock implements OrderModelMapper {}

class MockBonusCard extends Mock implements BonusCardResponse {}

class MockPurchase extends Mock implements CustomerApiPurchase {}

class MockProduct extends Mock implements Product {}

class MockOrderModel extends Mock implements OrderModel {}

class MockOrderResponse extends Mock implements OrderResponse {}

void main() {
  late CustomerApiPurchaseRepository customerApiRepository;
  late AuthRepository authRepository;
  late CustomerApiService customerApiService;
  late BonusCardRepository bonusCardRepository;
  late OrderModelMapper orderModelMapper;
  setUp(() {
    authRepository = MockAuthRepository();
    customerApiService = MockCustomerApiService();
    bonusCardRepository = MockBonusCardRepository();
    orderModelMapper = MockOrderModelMapper();
    customerApiRepository = CustomerApiPurchaseRepository(
      customerApiService: customerApiService,
      authRepository: authRepository,
      bonusCardRepository: bonusCardRepository,
      orderModelMapper: orderModelMapper,
    );
  });
  setUpAll(() {
    registerFallbackValue(MockOrderModel());
  });
  group('CustomerApiRepository', () {
    group('createPurchase', () {
      test(
        'should return CustomerApiPurchase when success',
        () async {
          // ARRANGE
          final fakeResult = MockPurchase();
          when(() => authRepository.token)
              .thenAnswer((_) async => AuthTestData.token);
          when(() => customerApiService.createPurchase(
                token: AuthTestData.token,
                products: any(named: 'products'),
                orderId: any(named: 'orderId'),
              )).thenAnswer((_) async => fakeResult);
          // ACT
          final result = await customerApiRepository.createPurchase(
              products: [MockProduct(), MockProduct()],
              orderId: CustomerApiTestData.orderId);
          // ASSERT
          expect(result, fakeResult);
        },
      );
      test(
        'should throw Exception when token is null',
        () async {
          // ARRANGE
          final fakeResult = MockPurchase();
          when(() => authRepository.token).thenAnswer((_) async => null);
          when(() => customerApiService.createPurchase(
                token: AuthTestData.token,
                products: any(named: 'products'),
                orderId: any(named: 'orderId'),
              )).thenAnswer((_) async => fakeResult);
          // ASSERT
          expect(
            () async => await customerApiRepository.createPurchase(
                products: [MockProduct(), MockProduct()],
                orderId: CustomerApiTestData.orderId),
            throwsA(
              isA<Exception>(),
            ),
          );
        },
      );
      test(
        'should throw Exception when products is empty',
        () async {
          // ARRANGE
          final fakeResult = MockPurchase();
          when(() => authRepository.token)
              .thenAnswer((_) async => AuthTestData.token);
          when(() => customerApiService.createPurchase(
                token: AuthTestData.token,
                products: any(named: 'products'),
                orderId: any(named: 'orderId'),
              )).thenAnswer((_) async => fakeResult);
          // ASSERT
          expect(
            () async => await customerApiRepository.createPurchase(
              products: [],
              orderId: CustomerApiTestData.orderId,
            ),
            throwsA(
              isA<Exception>(),
            ),
          );
        },
      );
    });
    group('setPayment', () {
      test(
        'should return Future<void> when success',
        () async {
          // ARRANGE
          const DefaultResponse<void> fakeResult = ApiResponse.success(null);
          final fakeOrderModel = MockOrderModel();
          final fakeOrderOrderResponse = MockOrderResponse();
          when(() => fakeOrderModel.isValid()).thenReturn(true);
          when(() => orderModelMapper.mapToOrderResponse(any(), any()))
              .thenReturn(fakeOrderOrderResponse);
          when(() => authRepository.token)
              .thenAnswer((_) async => AuthTestData.token);
          when(() => customerApiService.setPayment(
                token: AuthTestData.token,
                order: fakeOrderOrderResponse,
              )).thenAnswer((_) async => fakeResult);

          // ACT
          await customerApiRepository.setPayment(order: fakeOrderModel);
          //ASSERT
          verify(() => customerApiService.setPayment(
              token: AuthTestData.token,
              order: fakeOrderOrderResponse)).called(1);
        },
      );
      test(
        'should throw Exception when token is null',
        () async {
          // ARRANGE
          const DefaultResponse<void> fakeResult = ApiResponse.success(null);
          final fakeOrderModel = MockOrderModel();
          final fakeOrderOrderResponse = MockOrderResponse();
          when(() => fakeOrderModel.isValid()).thenReturn(true);
          when(() => orderModelMapper.mapToOrderResponse(any(), any()))
              .thenReturn(fakeOrderOrderResponse);
          when(() => authRepository.token).thenAnswer((_) async => null);
          when(() => customerApiService.setPayment(
                token: AuthTestData.token,
                order: fakeOrderOrderResponse,
              )).thenAnswer((_) async => fakeResult);
          // ASSERT
          expect(
            () async =>
                await customerApiRepository.setPayment(order: fakeOrderModel),
            throwsA(
              isA<Exception>(),
            ),
          );
        },
      );
      test(
        'should throw Exception when OrderModel.isValid() == false',
        () async {
          // ARRANGE
          const DefaultResponse<void> fakeResult = ApiResponse.success(null);
          final fakeOrderModel = MockOrderModel();
          final fakeOrderOrderResponse = MockOrderResponse();
          when(() => fakeOrderModel.isValid()).thenReturn(false);
          when(() => orderModelMapper.mapToOrderResponse(any(), any()))
              .thenReturn(fakeOrderOrderResponse);
          when(() => authRepository.token)
              .thenAnswer((_) async => AuthTestData.token);
          when(() => customerApiService.setPayment(
                token: AuthTestData.token,
                order: fakeOrderOrderResponse,
              )).thenAnswer((_) async => fakeResult);
          // ASSERT
          expect(
            () async =>
                await customerApiRepository.setPayment(order: fakeOrderModel),
            throwsA(
              isA<Exception>(),
            ),
          );
        },
      );
    });
    group('rollbackPurchase', () {
      test(
        'should return Future<void> when success',
        () async {
          // ARRANGE
          const DefaultResponse<void> fakeResult = ApiResponse.success(null);
          when(() => authRepository.token)
              .thenAnswer((_) async => AuthTestData.token);
          when(() => customerApiService.rollbackPurchase(
                token: AuthTestData.token,
                purchaseId: CustomerApiTestData.purchaseId,
              )).thenAnswer((_) async => fakeResult);

          // ACT
          await customerApiRepository.rollbackPurchase(
              purchaseId: CustomerApiTestData.purchaseId);
          //ASSERT
          verify(() => customerApiService.rollbackPurchase(
                token: AuthTestData.token,
                purchaseId: CustomerApiTestData.purchaseId,
              )).called(1);
        },
      );
      test(
        'should throw Exception when token is null',
        () async {
          // ARRANGE
          const DefaultResponse<void> fakeResult = ApiResponse.success(null);
          when(() => authRepository.token).thenAnswer((_) async => null);
          when(() => customerApiService.rollbackPurchase(
                token: AuthTestData.token,
                purchaseId: CustomerApiTestData.purchaseId,
              )).thenAnswer((_) async => fakeResult);
          // ASSERT
          expect(
            () async => await customerApiRepository.rollbackPurchase(
                purchaseId: CustomerApiTestData.purchaseId),
            throwsA(
              isA<Exception>(),
            ),
          );
        },
      );
    });
  });
}
