import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'src/helper/app_routes.dart';
import 'src/helper/route_helper.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Myntra Clone Flutter',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      initialRoute: AppRoutes.splash,
      getPages: RouteHelper.getAllPages(),
    );
  }
}
