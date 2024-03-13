import 'package:algoeduc/rotas/app_rotas.dart';
import 'package:algoeduc/telas/auth/cadastrar_screen.dart';
import 'package:algoeduc/telas/auth/login_screen.dart';
import 'package:algoeduc/telas/telaprincipal/home.dart' as telaprincipal;
import 'package:flutter/material.dart';

void main() => runApp(const AppRoot());

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      initialRoute: AppRoutes.login,
      routes: {
        AppRoutes.login: (ctx) => const LoginScreen(),
        AppRoutes.cadastro: (ctx) => const CadratrarScreen(),
        AppRoutes.home: (ctx) => const telaprincipal.Home(),
      },
    );
  }
}
