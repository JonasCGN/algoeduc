import 'package:algoeduc/rotas/app_rotas.dart';
import 'package:algoeduc/telas/telaprincipal/cadastrar_screen.dart';
import 'package:algoeduc/telas/telaprincipal/login_screen.dart';
import 'package:flutter/material.dart';

void main() => runApp(const AppRoot());

class AppRoot extends StatelessWidget {
  const AppRoot({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        AppRoutes.login: (ctx) => const LoginScreen(),
        AppRoutes.cadastro: (ctx) => const CadratrarScreen(),
      },
    );
  }
}
