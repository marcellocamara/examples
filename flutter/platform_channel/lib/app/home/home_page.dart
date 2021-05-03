import 'package:flutter/material.dart';
import 'package:platform_channel/app/home/home_controller.dart';

/// Created by marcellocamara@id.uff.br on 03/05/2021.

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final HomeController controller = HomeController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Platform Channels"),
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            ValueListenableBuilder<String>(
              valueListenable: controller.versionName,
              builder: (_, value, __) {
                return Visibility(
                  visible: value.isNotEmpty,
                  child: Text("Build version: $value"),
                  replacement: TextButton(
                    onPressed: controller.getVersionNumber,
                    child: Text("Press to get the build version"),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
