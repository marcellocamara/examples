import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';

/// Created by marcellocamara@id.uff.br on 03/05/2021.

class HomeController {
  /// Version name
  final ValueNotifier<String> versionName = ValueNotifier("");

  /// Gets the native build version number / name
  Future<void> getVersionNumber() async {
    var channelVersion = MethodChannel("marcello.dev.platform_channel/native");
    try {
      var version = await channelVersion.invokeMethod("version");
      versionName.value = version;
    } on PlatformException catch (e) {
      print("Platform Exception => ${e.toString()}");
    }
  }
}
