package ru.sosedifedi.app

import FlavorHostApi
import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodCall
import io.flutter.plugin.common.MethodChannel

private class FlavorApiImpl: FlavorHostApi{
    override fun getFlavor(): String {
        return BuildConfig.FLAVOR
    }
}


class MainActivity: FlutterActivity() {
    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)
        val api = FlavorApiImpl()
        FlavorHostApi.setUp(flutterEngine.dartExecutor.binaryMessenger, api)
    }
}
