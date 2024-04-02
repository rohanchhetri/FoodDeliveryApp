import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:uber_eats/view/home.dart';
import 'package:uber_eats/view/login.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
          useMaterial3: true,
          colorScheme: ColorScheme.fromSeed(
              seedColor: const Color.fromARGB(255, 76, 175, 80))),
      home: const HomeView(),
    );
  }
}
