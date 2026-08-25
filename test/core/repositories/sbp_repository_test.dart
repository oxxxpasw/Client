import 'package:sosedifedi/data/mappers/sbp_mapper.dart';
import 'package:sosedifedi/data/models/sbp_response/sbp_response.dart';
import 'package:sosedifedi/data/repository/sbp_repository.dart';
import 'package:sosedifedi/data/services/sbp_payment_service.dart';
import 'package:sosedifedi/domain/models/sbp_bank/sbp_bank.dart';
import 'package:sosedifedi/utils/dio_error_handler/models/dio_error_models.dart';
import 'package:sosedifedi/utils/functional_models/api_response.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:mocktail/mocktail.dart';
import 'package:plugin_platform_interface/plugin_platform_interface.dart';
import 'package:url_launcher_platform_interface/url_launcher_platform_interface.dart';

class MockSbpPaymentService extends Mock implements SbpPaymentService {}

class MockSbpMapper extends Mock implements SbpMapper {}

class FakeSbpResponse extends Fake implements SbpResponse {}

class FakeSbpBank extends Fake implements SbpBank {
  @override
  Uri get uri => Uri.parse('some_url');
}

class MockUrlLauncher extends Mock
    with MockPlatformInterfaceMixin
    implements UrlLauncherPlatform {}

void main() {
  late SbpRepositoryImpl sbpRepository;
  late SbpPaymentService sbpPaymentService;
  late SbpMapper sbpMapper;
  late Uri qrUrl;
  late UrlLauncherPlatform launcher;

  setUpAll(() {
    registerFallbackValue(FakeSbpResponse());
    registerFallbackValue(FakeSbpBank());
    registerFallbackValue(const LaunchOptions());

    launcher = MockUrlLauncher();
    qrUrl = Uri.parse('some_url');

    UrlLauncherPlatform.instance = launcher;
  });

  setUp(() {
    sbpPaymentService = MockSbpPaymentService();
    sbpMapper = MockSbpMapper();
    sbpRepository = SbpRepositoryImpl(
      sbpPaymentService: sbpPaymentService,
      sbpMapper: sbpMapper,
    );
  });

  test(
      'getAvailableSbpBanks returns all SbpBanks when no SbpBanks can be launched',
      () async {
    final response = FakeSbpResponse();
    final banks = [FakeSbpBank(), FakeSbpBank()];

    when(() => sbpPaymentService.getBankList())
        .thenAnswer((_) async => ApiResponse.success(response));
    when(() => sbpMapper.banksFromResponse(response, qrUrl)).thenReturn(banks);
    when(() => launcher.canLaunch(qrUrl.toString()))
        .thenAnswer((_) async => false);

    final result = await sbpRepository.getAvailableBanks(qrUrl);

    verify(() => launcher.canLaunch(qrUrl.toString())).called(2);
    verify(() => sbpPaymentService.getBankList()).called(1);
    verify(() => sbpMapper.banksFromResponse(response, qrUrl)).called(1);
    expect(result.isSuccess, isTrue);
    expect(result.result, equals(banks));
  });

  test('getAvailableSbpBanks returns only launchable SbpBanks', () async {
    final response = FakeSbpResponse();
    final banks = [FakeSbpBank(), FakeSbpBank()];

    when(() => sbpPaymentService.getBankList())
        .thenAnswer((_) async => ApiResponse.success(response));
    when(() => sbpMapper.banksFromResponse(response, qrUrl)).thenReturn(banks);
    when(() => launcher.canLaunch(any())).thenAnswer((_) async => true);

    final result = await sbpRepository.getAvailableBanks(qrUrl);

    verify(() => launcher.canLaunch(qrUrl.toString())).called(2);
    verify(() => sbpPaymentService.getBankList()).called(1);
    verify(() => sbpMapper.banksFromResponse(response, qrUrl)).called(1);
    expect(result.isSuccess, isTrue);
    expect(result.result, equals(banks));
  });

  test('getAvailableSbpBanks returns error', () async {
    when(() => sbpPaymentService.getBankList()).thenAnswer(
      (_) async => ApiResponse.error(
        CommonResponseError.undefinedError(
          Exception('testException'),
        ),
      ),
    );
    final result = await sbpRepository.getAvailableBanks(qrUrl);

    verify(() => sbpPaymentService.getBankList()).called(1);
    expect(result.hasError, isTrue);
  });

  test('getAllSbpBanks returns all SbpBanks', () async {
    final response = FakeSbpResponse();
    final banks = [FakeSbpBank(), FakeSbpBank()];

    when(() => sbpPaymentService.getBankList())
        .thenAnswer((_) async => ApiResponse.success(response));
    when(() => sbpMapper.banksFromResponse(response, qrUrl)).thenReturn(banks);

    final result = await sbpRepository.getAllBanks(qrUrl);

    verify(() => sbpPaymentService.getBankList()).called(1);
    verify(() => sbpMapper.banksFromResponse(response, qrUrl)).called(1);
    expect(result.isSuccess, isTrue);
    expect(result.result, equals(banks));
  });

  test('getAllBanks returns error', () async {
    when(() => sbpPaymentService.getBankList()).thenAnswer(
      (_) async => ApiResponse.error(
        CommonResponseError.undefinedError(
          Exception('testException'),
        ),
      ),
    );
    final result = await sbpRepository.getAllBanks(qrUrl);

    verify(() => sbpPaymentService.getBankList()).called(1);
    expect(result.hasError, isTrue);
  });
}
