import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

import 'chat/view/chat.dart';
import 'showPlant/view/menu.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    Get.put(Dio());
    return GetMaterialApp.router(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Project',
      key: key,
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      getPages: [GetPage(name: "/product", page: () => ChatPageView())],
      //  getPages: [GetPage(name: "/product", page: () => MenuPageView())],
      enableLog: true,
    );
  }
}
