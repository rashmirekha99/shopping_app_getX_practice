import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:get/route_manager.dart';
import 'package:shopping_app_getx_practice/init/init_controllers.dart';
import 'package:shopping_app_getx_practice/home_pages.dart';
import 'package:shopping_app_getx_practice/next_page.dart';
import 'package:shopping_app_getx_practice/view/home_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: InitDep(),
      title: 'Shop App',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.orange.shade300),
        useMaterial3: true,
      ),
      home: const HomePage(),
      routes: {
        '/next': (context) => NextPage(),
      },
    );
  }
}
