import 'package:flutter/material.dart';
import 'package:platform_channel/app/home/home_page.dart';

/// Created by marcellocamara@id.uff.br on 03/05/2021.

class AppWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Platform Channel Example",
      theme: ThemeData(primarySwatch: Colors.blue),
      home: HomePage(),
    );
  }
}
