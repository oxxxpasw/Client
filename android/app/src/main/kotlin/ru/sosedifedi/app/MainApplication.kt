package ru.sosedifedi.app

import android.app.Application
import com.yandex.mapkit.MapKitFactory

class MainApplication : Application() {
    override fun onCreate() {
        super.onCreate()
        MapKitFactory.setLocale("ru_RU")
        MapKitFactory.setApiKey(BuildConfig.MAPKIT_API_KEY)
    }
}
