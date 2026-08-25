import 'package:sosedifedi/data/models/payment_model/payment_model.dart';
import 'package:sosedifedi/data/models/payment_type/payment_type.dart';
import 'package:sosedifedi/data/repository/payment_repository.dart';
import 'package:sosedifedi/data/services/payment_service.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_data/order_test_data.dart';

class MockPaymentService extends Mock implements PaymentService {}

class FakePaymentResponse extends Fake implements PaymentResponse {}

class FakePaymentType extends Fake implements PaymentType {}

class FakePaymentStatusResponse extends Fake implements PaymentStatusResponse {}

void main() {
  late PaymentRepository paymentRepository;
  late PaymentService paymentService;

  setUpAll(() {
    registerFallbackValue(FakePaymentResponse());
    registerFallbackValue(FakePaymentType());
    registerFallbackValue(FakePaymentStatusResponse());
  });

  setUp(() {
    paymentService = MockPaymentService();
    paymentRepository = PaymentRepositoryImpl(paymentService: paymentService);
  });

  group('PaymentRepositoryImpl', () {
    test(
        'processPayment calls paymentService.processPayment with correct params',
        () async {
      final paymentResponse = FakePaymentResponse();

      when(() => paymentService.processPayment(
            orderId: OrderTestData.orderId,
            finalPrice: OrderTestData.finalPrice,
            paymentTypeId: OrderTestData.paymentTypeId,
          )).thenAnswer((_) async => ApiResponse.success(paymentResponse));

      final result = await paymentRepository.processPayment(
        orderId: OrderTestData.orderId,
        finalSum: OrderTestData.finalPrice,
        paymentTypeId: OrderTestData.paymentTypeId,
      );

      verify(
        () => paymentService.processPayment(
          orderId: OrderTestData.orderId,
          finalPrice: OrderTestData.finalPrice,
          paymentTypeId: OrderTestData.paymentTypeId,
        ),
      ).called(1);
      expect(result.isSuccess, isTrue);
      expect(result.result, equals(paymentResponse));
    });

    test('getPaymentTypes calls paymentService.getPaymentTypes', () async {
      final paymentTypes = [FakePaymentType(), FakePaymentType()];

      when(() => paymentService.getPaymentTypes())
          .thenAnswer((_) async => ApiResponse.success(paymentTypes));

      final result = await paymentRepository.getPaymentTypes();

      verify(() => paymentService.getPaymentTypes()).called(1);
      expect(result.isSuccess, isTrue);
      expect(result.result, equals(paymentTypes));
    });

    test(
        'getPaymentStatus calls paymentService.getPaymentStatus with correct param',
        () async {
      final paymentStatusResponse = FakePaymentStatusResponse();

      when(() => paymentService.getPaymentStatus(OrderTestData.paymentId))
          .thenAnswer((_) async => ApiResponse.success(paymentStatusResponse));

      final result =
          await paymentRepository.getPaymentStatus(OrderTestData.paymentId);

      verify(() => paymentService.getPaymentStatus(OrderTestData.paymentId))
          .called(1);
      expect(result.isSuccess, isTrue);
      expect(result.result, equals(paymentStatusResponse));
    });
  });
}
