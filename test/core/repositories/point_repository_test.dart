import 'dart:async';

import 'package:sosedifedi/data/models/point/point.dart';
import 'package:sosedifedi/data/repository/auth_repository.dart';
import 'package:sosedifedi/data/repository/point_repository.dart';
import 'package:sosedifedi/data/services/cart_service.dart';
import 'package:sosedifedi/data/services/point_service.dart';
import 'package:sosedifedi/data/services/wp_service.dart';
import 'package:sosedifedi/presentation/app_environment.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';

import '../test_data/product_test_data.dart';

class MockWPService extends Mock implements WPService {}

class MockPointService extends Mock implements PointService {}

class MockCartService extends Mock implements CartService {}

class MockAuthRepository extends Mock implements AuthRepository {}

class MockAppEnvironment extends Mock implements AppEnvironment {
  @override
  String get testPointFile => ProductTestData.assortmentFile;
}

class FakePoint extends Fake implements Point {}

void main() {
  late PointRepositoryImpl pointRepository;
  late MockWPService wPService;
  late MockPointService pointService;
  late MockCartService cartService;
  late MockAuthRepository authRepository;
  late MockAppEnvironment appEnvironment;
  StreamSubscription? subscription;

  setUpAll(() {
    registerFallbackValue(const PointData());
    registerFallbackValue(FakePoint());
  });

  setUp(() {
    wPService = MockWPService();
    pointService = MockPointService();
    cartService = MockCartService();
    authRepository = MockAuthRepository();
    appEnvironment = MockAppEnvironment();
    pointRepository = PointRepositoryImpl(
      wpService: wPService,
      pointService: pointService,
      cartService: cartService,
      authRepository: authRepository,
      appEnvironment: appEnvironment,
    );
  });

  tearDown(() {
    subscription?.cancel();
    pointRepository.dispose();
  });

  group('selectedPoint', () {
    test('get selectedPoint should return correct Point data', () async {
      final points = [
        const Point('point_id_1', 'Point 1', [1, 1], null),
        const Point('point_id_2', 'Point 2', [2, 2], null),
      ];
      final pointData = PointData(points: points, selectedPoint: null);

      when(() => pointService.getPoints())
          .thenAnswer((_) => Future.value(pointData));
      when(() => pointService.setPoints(any()))
          .thenAnswer((_) => Future.value(null));
      when(() => wPService.getPoints())
          .thenAnswer((_) => Future.value(ApiResponse.success(points)));
      when(() => cartService.getCartCount(any()))
          .thenAnswer((_) => Future.value(0));

      await pointRepository.changeStore(points.first);

      final result = pointRepository.selectedStore;
      verify(() => pointService.getPoints()).called(1);
      verify(() => pointService.setPoints(any())).called(2);
      verify(() => wPService.getPoints()).called(1);
      verify(() => cartService.getCartCount(any())).called(1);
      expect(result, equals(points.first));
    });
  });
  group('pointStream', () {
    test('pointStream should return correct PointData stream', () async {
      final points = [
        const Point('point_id_1', 'Point 1', [1, 1], null),
        const Point('point_id_2', 'Point 2', [2, 2], null),
      ];
      final pointData = PointData(points: points, selectedPoint: null);

      when(() => pointService.getPoints())
          .thenAnswer((_) => Future.value(pointData));
      when(() => pointService.setPoints(any()))
          .thenAnswer((_) => Future.value(null));
      when(() => wPService.getPoints())
          .thenAnswer((_) => Future.value(ApiResponse.success(points)));
      when(() => cartService.getCartCount(any()))
          .thenAnswer((_) => Future.value(0));

      subscription = pointRepository.storesStream.listen(
        expectAsync1(
          (event) {
            verify(() => pointService.getPoints()).called(1);
            verify(() => pointService.setPoints(any())).called(1);
            verify(() => wPService.getPoints()).called(1);
            verify(() => cartService.getCartCount(any())).called(1);
            expect(
              event,
              equals(pointData),
            );
          },
        ),
      );
    });
  });
  group('getPointData', () {
    test('pointData should return correct PointData', () async {
      final points = [
        const Point('point_id_1', 'Point 1', [1, 1], null),
        const Point('point_id_2', 'Point 2', [2, 2], null),
      ];
      final fetchedPoints = [
        const Point('point_id_1', 'Point 1', [1, 1], null),
        const Point('point_id_2', 'Point 2', [2, 2], null),
        const Point('point_id_3', 'Point 3', [3, 3], null),
      ];
      final pointData = PointData(points: points, selectedPoint: points.first);
      when(() => pointService.getPoints())
          .thenAnswer((_) => Future.value(pointData));
      when(() => pointService.setPoints(any()))
          .thenAnswer((_) => Future.value(null));
      when(() => wPService.getPoints())
          .thenAnswer((_) => Future.value(ApiResponse.success(fetchedPoints)));
      when(() => cartService.getCartCount(any()))
          .thenAnswer((_) => Future.value(0));

      final result = await pointRepository.getStores();
      verify(() => pointService.getPoints()).called(1);
      verify(() => pointService.setPoints(any())).called(1);
      verify(() => wPService.getPoints()).called(1);
      verify(() => cartService.getCartCount(any())).called(1);
      expect(result, equals(pointData.copyWith(points: fetchedPoints)));
    });

    test('pointData should return correct PointData', () async {
      final fetchedPoints = [
        const Point('point_id_1', 'Point 1', [1, 1], null),
        const Point('point_id_2', 'Point 2', [2, 2], null),
        const Point('point_id_3', 'Point 3', [3, 3], null),
      ];
      when(() => pointService.getPoints())
          .thenAnswer((_) => Future.value(null));
      when(() => pointService.setPoints(any()))
          .thenAnswer((_) => Future.value(null));
      when(() => wPService.getPoints())
          .thenAnswer((_) => Future.value(ApiResponse.success(fetchedPoints)));
      when(() => cartService.getCartCount(any()))
          .thenAnswer((_) => Future.value(0));

      final result = await pointRepository.getStores();

      verify(() => pointService.getPoints()).called(1);
      verify(() => pointService.setPoints(any())).called(1);
      verify(() => wPService.getPoints()).called(1);
      verify(() => cartService.getCartCount(any())).called(1);
      expect(result, equals(PointData(points: fetchedPoints)));
    });
    test('pointData should return correct PointData', () async {
      final points = [
        const Point('point_id_1', 'Point 1', [1, 1], null),
        const Point('point_id_2', 'Point 2', [2, 2], null),
      ];
      final fetchedPoints = [
        const Point('point_id_1', 'Point 1', [1, 1], null),
        const Point('point_id_2', 'Point 2', [2, 2], null),
        const Point('point_id_3', 'Point 3', [3, 3], null),
      ];
      final pointData = PointData(points: points, selectedPoint: points.first);
      when(() => pointService.getPoints())
          .thenAnswer((_) => Future.value(pointData));
      when(() => pointService.setPoints(any()))
          .thenAnswer((_) => Future.value(null));
      when(() => wPService.getPoints())
          .thenAnswer((_) => Future.value(ApiResponse.success(points)));
      when(() => cartService.getCartCount(any()))
          .thenAnswer((_) => Future.value(0));

      await pointRepository.getStores();

      when(() => wPService.getPoints())
          .thenAnswer((_) => Future.value(ApiResponse.success(fetchedPoints)));

      final result = await pointRepository.getStores();

      verify(() => pointService.getPoints()).called(2);
      verify(() => pointService.setPoints(any())).called(2);
      verify(() => wPService.getPoints()).called(1);
      verify(() => cartService.getCartCount(any())).called(2);
      expect(result, equals(pointData));
    });
    test('pointData should return correct PointData', () async {
      final points = [
        const Point('point_id_1', 'Point 1', [1, 1], null),
        const Point('point_id_2', 'Point 2', [2, 2], null),
      ];
      final fetchedPoints = [
        const Point('point_id_1', 'Point 1', [1, 1], null),
        const Point('point_id_2', 'Point 2', [2, 2], null),
        const Point('point_id_3', 'Point 3', [3, 3], null),
      ];
      final pointData = PointData(points: points, selectedPoint: points.first);
      when(() => pointService.getPoints())
          .thenAnswer((_) => Future.value(pointData));
      when(() => pointService.setPoints(any()))
          .thenAnswer((_) => Future.value(null));
      when(() => wPService.getPoints())
          .thenAnswer((_) => Future.value(ApiResponse.success(points)));
      when(() => cartService.getCartCount(any()))
          .thenAnswer((_) => Future.value(0));

      await pointRepository.getStores();

      when(() => wPService.getPoints())
          .thenAnswer((_) => Future.value(ApiResponse.success(fetchedPoints)));

      final result = await pointRepository.getStores(refresh: true);

      verify(() => pointService.getPoints()).called(2);
      verify(() => pointService.setPoints(any())).called(2);
      verify(() => wPService.getPoints()).called(2);
      verify(() => cartService.getCartCount(any())).called(2);
      expect(result, equals(pointData.copyWith(points: fetchedPoints)));
    });
    test('pointData should return correct PointData', () async {
      final error = CommonResponseError<DefaultApiError>.undefinedError(
          Exception('textException'));
      when(() => pointService.getPoints())
          .thenAnswer((_) => Future.value(null));
      when(() => pointService.setPoints(any()))
          .thenAnswer((_) => Future.value(null));
      when(() => wPService.getPoints())
          .thenAnswer((_) => Future.value(ApiResponse.error(error)));
      when(() => cartService.getCartCount(any()))
          .thenAnswer((_) => Future.value(0));

      final result = await pointRepository.getStores();

      verify(() => pointService.getPoints()).called(1);
      verify(() => pointService.setPoints(any())).called(1);
      verify(() => wPService.getPoints()).called(1);
      verify(() => cartService.getCartCount(any())).called(1);
      expect(result, equals(const PointData()));
    });
    test('pointData should return correct PointData', () async {
      final points = [
        Point(
          'point_id_1',
          'Point 1',
          [1, 1],
          DateTime.now().subtract(const Duration(hours: 1, milliseconds: 1)),
        ),
        const Point('point_id_2', 'Point 2', [2, 2], null),
      ];
      final fetchedPoints = [
        const Point('point_id_1', 'Point 1', [1, 1], null),
        const Point('point_id_2', 'Point 2', [2, 2], null),
      ];
      final pointData = PointData(points: points, selectedPoint: points.first);
      when(() => pointService.getPoints())
          .thenAnswer((_) => Future.value(pointData));
      when(() => pointService.setPoints(any()))
          .thenAnswer((_) => Future.value(null));
      when(() => wPService.getPoints())
          .thenAnswer((_) => Future.value(ApiResponse.success(fetchedPoints)));
      when(() => cartService.getCartCount(any()))
          .thenAnswer((_) => Future.value(0));

      final result = await pointRepository.getStores();

      verify(() => pointService.getPoints()).called(1);
      verify(() => pointService.setPoints(any())).called(1);
      verify(() => wPService.getPoints()).called(1);
      verify(() => cartService.getCartCount(any())).called(1);
      expect(
        result,
        equals(PointData(points: fetchedPoints, selectedPoint: null)),
      );
    });
  });
  group('pointById', () {
    test('pointById should return correct Point object', () async {
      const point = Point('point_id_1.json', 'Point 1', [1, 1], null);
      when(() => wPService.getPoints())
          .thenAnswer((_) async => const ApiResponse.success([point]));

      final result = await pointRepository.storeById('point_id_1');
      verify(() => wPService.getPoints()).called(1);
      expect(result.isSuccess, isTrue);
      expect(result._result, equals(point));
    });

    test('pointById should return correct Point object', () async {
      final error = CommonResponseError<DefaultApiError>.undefinedError(
          Exception('textException'));
      when(() => wPService.getPoints())
          .thenAnswer((_) async => ApiResponse.error(error));

      final result = await pointRepository.storeById('point_id_1');
      verify(() => wPService.getPoints()).called(1);
      expect(result.hasError, isTrue);
      expect(result.error, equals(error));
    });

    test('pointById should return correct Point object', () async {
      const point = Point('point_id_1.json', 'Point 1', [1, 1], null);
      when(() => wPService.getPoints())
          .thenAnswer((_) async => const ApiResponse.success([point]));

      final result = await pointRepository.storeById('point_id_1.json');
      verify(() => wPService.getPoints()).called(1);
      expect(result.isSuccess, isTrue);
      expect(result._result, equals(point));
    });

    test('pointById should return correct Point object', () async {
      const point = Point('point_id_1.json', 'Point 1', [1, 1], null);
      final points = [
        point,
        const Point('point_id_2', 'Point 2', [2, 2], null),
      ];
      final fetchedPoints = [
        const Point('point_id_2', 'Point 2', [2, 2], null),
        const Point('point_id_3', 'Point 3', [3, 3], null),
      ];
      when(() => pointService.getPoints())
          .thenAnswer((_) => Future.value(null));
      when(() => pointService.setPoints(any()))
          .thenAnswer((_) => Future.value(null));
      when(() => cartService.getCartCount(any()))
          .thenAnswer((_) => Future.value(0));
      when(() => wPService.getPoints())
          .thenAnswer((_) async => ApiResponse.success(points));

      await pointRepository.getStores(refresh: true);

      when(() => wPService.getPoints())
          .thenAnswer((_) async => ApiResponse.success(fetchedPoints));

      final result = await pointRepository.storeById('point_id_1.json');

      expect(result.isSuccess, isTrue);
      expect(result._result, equals(point));
    });
  });
  group('changePoint', () {
    test('changePoint should modify selectedPoint correctly', () async {
      final points = [
        const Point('point_id_1', 'Point 1', [1, 1], null),
        const Point('point_id_2', 'Point 2', [2, 2], null),
      ];
      final pointData = PointData(points: points, selectedPoint: null);

      when(() => pointService.getPoints())
          .thenAnswer((_) => Future.value(pointData));
      when(() => pointService.setPoints(any()))
          .thenAnswer((_) => Future.value(null));
      when(() => wPService.getPoints())
          .thenAnswer((_) => Future.value(ApiResponse.success(points)));
      when(() => cartService.getCartCount(any()))
          .thenAnswer((_) => Future.value(0));

      await pointRepository.changeStore(points.first);

      final result = pointRepository.selectedStore;
      verify(() => pointService.getPoints()).called(1);
      verify(() => pointService.setPoints(any())).called(2);
      verify(() => wPService.getPoints()).called(1);
      verify(() => cartService.getCartCount(any())).called(1);
      expect(result, equals(points.first));
    });
  });
  group('removePoint', () {
    test('removePoint should remove selectedPoint correctly', () async {
      final points = [
        const Point('point_id_1', 'Point 1', [1, 1], null),
        const Point('point_id_2', 'Point 2', [2, 2], null),
      ];
      final pointData = PointData(points: points, selectedPoint: points.first);

      when(() => pointService.getPoints())
          .thenAnswer((_) => Future.value(pointData));
      when(() => pointService.setPoints(any()))
          .thenAnswer((_) => Future.value(null));
      when(() => wPService.getPoints())
          .thenAnswer((_) => Future.value(ApiResponse.success(points)));
      when(() => cartService.getCartCount(any()))
          .thenAnswer((_) => Future.value(0));

      await pointRepository.getStores();

      await pointRepository.removeStore();

      final result = pointRepository.selectedStore;

      verify(() => pointService.getPoints()).called(1);
      verify(() => pointService.setPoints(any())).called(2);
      verify(() => wPService.getPoints()).called(1);
      verify(() => cartService.getCartCount(any())).called(1);
      expect(result, isNull);
    });
  });

  group('enableTestPoint', () {
    test('enableTestPoint should add test Point to points list correctly',
        () async {
      final points = [
        const Point('point_id_1', 'Point 1', [1, 1], null),
        const Point('point_id_2', 'Point 2', [2, 2], null),
      ];
      final pointData = PointData(points: points, selectedPoint: points.first);

      when(() => pointService.getPoints())
          .thenAnswer((_) => Future.value(pointData));
      when(() => pointService.setPoints(any()))
          .thenAnswer((_) => Future.value(null));
      when(() => wPService.getPoints())
          .thenAnswer((_) => Future.value(ApiResponse.success(points)));
      when(() => cartService.getCartCount(any()))
          .thenAnswer((_) => Future.value(0));

      await pointRepository.getStores();

      pointRepository.enableTestStore();

      final result = await pointRepository.getStores();

      verify(() => pointService.getPoints()).called(2);
      verify(() => pointService.setPoints(any())).called(2);
      verify(() => wPService.getPoints()).called(1);
      verify(() => cartService.getCartCount(any())).called(2);
      expect(
        result.points,
        equals([
          Point(appEnvironment.testPointFile, 'Тестовая точка', [0, 0], null),
          ...points,
        ]),
      );
    });
    test('enableTestPoint should add test Point to points list correctly',
        () async {
      final points = [
        const Point('point_id_1', 'Point 1', [1, 1], null),
        const Point('point_id_2', 'Point 2', [2, 2], null),
      ];
      final pointData = PointData(points: points, selectedPoint: points.first);

      when(() => pointService.getPoints())
          .thenAnswer((_) => Future.value(pointData));
      when(() => pointService.setPoints(any()))
          .thenAnswer((_) => Future.value(null));
      when(() => wPService.getPoints())
          .thenAnswer((_) => Future.value(ApiResponse.success(points)));
      when(() => cartService.getCartCount(any()))
          .thenAnswer((_) => Future.value(0));
      pointRepository.enableTestStore();

      final result = await pointRepository.getStores();

      verify(() => pointService.getPoints()).called(1);
      verify(() => pointService.setPoints(any())).called(1);
      verify(() => wPService.getPoints()).called(1);
      verify(() => cartService.getCartCount(any())).called(1);
      expect(
        result.points,
        equals([
          Point(appEnvironment.testPointFile, 'Тестовая точка', [0, 0], null),
          ...points,
        ]),
      );
    });
  });
  group('testPointEnabled', () {
    test('testPointEnabled should return false', () {
      pointRepository.enableTestStore();
      final result = pointRepository.testStoreEnabled();

      expect(result, isTrue);
    });
    test('testPointEnabled should return false', () {
      final result = pointRepository.testStoreEnabled();

      expect(result, isFalse);
    });
  });
  // test('enableTestPoint should add test Point to points list correctly', () {
  //   final initialData = PointData(
  //     points: [
  //       Point('point_id_1', 'Point 1', [1, 1], null),
  //       Point('point_id_2', 'Point 2', [2, 2], null),
  //     ],
  //     selectedPoint: Point('point_id_1', 'Point 1', [1, 1], null),
  //   );
  //   final expectedData = initialData.copyWith(
  //     points: [
  //       Point('test_point_id', 'Тестовая точка', [0, 0], null),
  //       Point('point_id_1', 'Point 1', [1, 1], null),
  //       Point('point_id_2', 'Point 2', [2, 2], null),
  //     ],
  //   );
  //   when(() => pointRepository._pointSubject.value).thenReturn(initialData);
  //
  //   pointRepository.enableTestPoint();
  //
  //   expect(pointRepository._pointSubject.value, equals(expectedData));
  // });
}
