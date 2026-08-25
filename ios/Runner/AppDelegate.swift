import UIKit
import Flutter
import YandexMapsMobile

private class FlavorApiImpl: FlavorHostApi{
    func getFlavor() throws -> String {
       return Bundle.main.infoDictionary!["FLAVOR"] as! String
     }
}

@main
@objc class AppDelegate: FlutterAppDelegate {
  override func application(
    _ application: UIApplication,
    didFinishLaunchingWithOptions launchOptions: [UIApplication.LaunchOptionsKey: Any]?
  ) -> Bool {
    YMKMapKit.setLocale("ru_RU")
    if let apiKey = Bundle.main.infoDictionary?["YandexMapkitApiKey"] as? String, !apiKey.isEmpty {
      YMKMapKit.setApiKey(apiKey)
    }
    GeneratedPluginRegistrant.register(with: self)
    let controller = window?.rootViewController as! FlutterViewController
    let api = FlavorApiImpl()
    FlavorHostApiSetup.setUp(binaryMessenger: controller.binaryMessenger, api: api)
    return super.application(application, didFinishLaunchingWithOptions: launchOptions)
  }
}
