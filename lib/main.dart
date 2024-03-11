import 'package:algoeduc/screens/home_screen.dart';
import 'package:algoeduc/screens/login_screen.dart';
import 'package:algoeduc/utils/app_routes.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'AlgoEduc',
      theme: ThemeData.light(),
      darkTheme: ThemeData.dark(),
      routes: {
        AppRoutes.home: (ctx) => const HomeScreen(),
        AppRoutes.loginPage:(context) => const LoginScreen()
      },
    );
  }
}
