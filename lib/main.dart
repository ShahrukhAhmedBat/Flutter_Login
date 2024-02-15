import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:menu/src/constant/page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Template',
      debugShowCheckedModeBanner: false,
      defaultTransition: Transition.fade,
      getPages: Routes.route,
      initialRoute: RouteConstant.LOGINPAGES,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
    );
  }
}

