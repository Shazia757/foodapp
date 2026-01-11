import 'package:flutter/material.dart';
import 'package:foodapp/config/color_schemes.dart';
import 'package:foodapp/view/home_screen.dart';
import 'package:foodapp/view/login_screen.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) => GetMaterialApp(
        title: 'Flutter Demo',
        theme: ThemeData(
          colorScheme: lightColorScheme,
          useMaterial3: true,
        ),
        home: HomeScreen(),
      );
}
