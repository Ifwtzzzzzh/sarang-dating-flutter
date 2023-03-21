import 'package:flutter/material.dart';
import 'package:sarang_dating_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:sarang_dating_app/src/theme_manager/theme_data_manager.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //FROM THEME DATA MANAGER
      theme: getApplicationThemeData(),
      home: Scaffold(
        appBar: AppBar(
          title: const Text('Material App Bar'),
        ),
        body: const Center(
          child: Text("Hello World"),
        ),
      ),
    );
  }
}
