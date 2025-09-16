import 'package:flutter/material.dart';
import 'package:internship_second_task/Configuration/AppRoutes.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Karyana App',
      initialRoute: AppRoutes.splash,
      routes: AppRoutes.routes,
    );
  }
}
