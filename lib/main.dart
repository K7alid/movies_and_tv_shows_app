import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:movies_and_tv_shows_app/shared/service.dart';

import 'binding.dart';
import 'features/home_screen/view/home_view.dart';

RestClient? client;
Dio? dio;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  // DioHelper.init();
  dio = Dio();
  client = RestClient(dio!);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: Binding(),
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
