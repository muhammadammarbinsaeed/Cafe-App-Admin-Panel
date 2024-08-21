// ignore_for_file: unused_import

import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:cafe_app_admin_panel/dashboard/dashboard.dart';
import 'package:cafe_app_admin_panel/firebase_options.dart';
import 'package:cafe_app_admin_panel/screens/food/add_food_item.dart';
import 'package:cafe_app_admin_panel/screens/food/food_items_view.dart';
import 'package:cafe_app_admin_panel/utils/color.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
void main() async {
    WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );
  configLoading();
  runApp( MyApp());
}
void configLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.ring
    ..loadingStyle = EasyLoadingStyle.dark
    ..indicatorSize = 35.0
    ..radius = 10.0
    ..maskType = EasyLoadingMaskType.black
    ..userInteractions = false
    ..dismissOnTap = false;
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'RWU Cafeteria System',
      theme: ThemeData(
        // primarySwatch: primaryColor,
      ),
      home:  Dashboardd(),
      builder: EasyLoading.init(),
    );
  }
}
