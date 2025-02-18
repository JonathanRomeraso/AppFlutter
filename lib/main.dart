import 'package:flutter/material.dart';
import 'package:flutter_application_1/screens/dashboad_screen.dart';
import 'package:flutter_application_1/screens/list_students_screen.dart';
import 'package:flutter_application_1/screens/splash_screen.dart';
import 'package:flutter_application_1/utils/global_values.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ValueListenableBuilder(
        valueListenable: GlobalValues.themeApp,
        builder: (context, value, child) {
          return MaterialApp(
            themeMode: value,
            routes: {
              "/list": (context) => ListStudentsScreen(),
              "/dash": (context) => DashboadScreen(),
            },
            title: 'Material App',
            home: SplashScreen(),
          );
        });
  }
}
