package marcello.dev.platform_channel

import io.flutter.embedding.android.FlutterActivity
import io.flutter.embedding.engine.FlutterEngine
import io.flutter.plugin.common.MethodChannel

class MainActivity : FlutterActivity() {

    private val channelName = "marcello.dev.platform_channel/native"
    private val methodName = "version"

    override fun configureFlutterEngine(flutterEngine: FlutterEngine) {
        super.configureFlutterEngine(flutterEngine)

        MethodChannel(flutterEngine.dartExecutor.binaryMessenger, channelName)
                .setMethodCallHandler { call, result ->
                    if (call.method.equals(methodName)) {
                        result.success(BuildConfig.VERSION_NAME)
                    } else {
                        result.notImplemented()
                    }
                }
    }

}
