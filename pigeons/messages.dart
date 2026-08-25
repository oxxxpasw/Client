import 'package:pigeon/pigeon.dart';

@ConfigurePigeon(PigeonOptions(
  dartOut: 'lib/messages.g.dart',
  dartOptions: DartOptions(),
  kotlinOut: 'android/app/src/main/kotlin/ru/sosedifedi/app/Messages.g.kt',
  kotlinOptions: KotlinOptions(),
  swiftOut: 'ios/Runner/Messages.g.swift',
  swiftOptions: SwiftOptions(),
  dartPackageName: 'sosedifedi',
))
@HostApi()
abstract class FlavorHostApi {
  String getFlavor();
}
