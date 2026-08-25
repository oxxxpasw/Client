import 'package:sosedifedi/presentation/app_environment.dart';

const kProdBackend = 'https://api.coffeelil.online';
const kLocalBackend = 'http://10.0.2.2:8000';

const releaseAppEnvironment = AppEnvironment(
  configType: ConfigType.release,
  apiEndpoint: '$kProdBackend/api/',
  authServiceEndpoint: '$kProdBackend/auth/',
  systemId: 'sosedifedi',
  customerApiEndpoint: '$kProdBackend/customer/',
  analystEndpoint: '$kProdBackend/analyst',
  buildType: BuildType.release,
  debugOptions: DebugOptions(debugShowCheckedModeBanner: false),
  debugPaintOptions: DebugPaintOptions(),
  geocoderApiKey: '48f97ab4-b0e4-441b-b162-d5cd6266d48f',
  sbpUrl: '$kProdBackend/sbp/',
  paymentServiceEndpoint: '$kProdBackend/payment',
  dataownerId: 'owner-1',
  orderEndpoint: '$kProdBackend/order/',
  geocoderApiUrl: '$kProdBackend/geocode-maps/1.x/',
  defaultStore: 'catalog.json',
  integrationId: 'integration-1',
  fridgeApiUrl: '$kProdBackend/fridge/',
  paymentRedirectUrl: PaymentRedirectUrl(
    successUrl: '/success-message',
    failureUrl: '/failure-message',
  ),
  legalInfo: LegalInfo(
    userAgreementUrl: 'https://reg.coffeelil.online/legal/user-argeement.html',
    publicOfferUrl: 'https://reg.coffeelil.online/legal/public-offer.html',
    privacyPolicyUrl: 'https://reg.coffeelil.online/legal/new-privacy-policy.html',
  ),
  defaultLocation: [27.555696, 53.902735],
  uploadImageMaxSize: 720.0,
);

const testAppEnvironment = AppEnvironment(
  configType: ConfigType.test,
  apiEndpoint: '$kProdBackend/api/',
  authServiceEndpoint: '$kProdBackend/auth/',
  systemId: 'sosedifedi',
  customerApiEndpoint: '$kProdBackend/customer/',
  analystEndpoint: '$kProdBackend/analyst',
  buildType: BuildType.release,
  debugOptions: DebugOptions(debugShowCheckedModeBanner: false),
  debugPaintOptions: DebugPaintOptions(),
  geocoderApiKey: '48f97ab4-b0e4-441b-b162-d5cd6266d48f',
  sbpUrl: '$kProdBackend/sbp/',
  paymentServiceEndpoint: '$kProdBackend/payment',
  dataownerId: 'owner-1',
  orderEndpoint: '$kProdBackend/order/',
  geocoderApiUrl: '$kProdBackend/geocode-maps/1.x/',
  defaultStore: 'catalog.json',
  integrationId: 'integration-1',
  fridgeApiUrl: '$kProdBackend/fridge/',
  paymentRedirectUrl: PaymentRedirectUrl(
    successUrl: '/success-message',
    failureUrl: '/failure-message',
  ),
  legalInfo: LegalInfo(
    userAgreementUrl: 'https://reg.coffeelil.online/legal/user-argeement.html',
    publicOfferUrl: 'https://reg.coffeelil.online/legal/public-offer.html',
    privacyPolicyUrl: 'https://reg.coffeelil.online/legal/new-privacy-policy.html',
  ),
  defaultLocation: [27.555696, 53.902735],
  uploadImageMaxSize: 720.0,
);
