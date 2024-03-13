import 'package:algoeduc/models/cores.dart';
import 'package:algoeduc/telas/telaprincipal/components/my_button_login.dart';
import 'package:algoeduc/telas/telaprincipal/components/my_colunm_login_and_git.dart';
import 'package:algoeduc/telas/telaprincipal/components/my_text_field.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginState();
}

class _LoginState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final sizeWidth = mediaQuery.size.width;
    final sizeTop = mediaQuery.size.height;

    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.only(top: sizeTop * 0.10),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/icon/icon.png",
              fit: BoxFit.contain,
              width: sizeWidth * 0.50,
            ),
            Container(
              decoration: const BoxDecoration(
                color: MyColors.cinza,
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              margin: const EdgeInsets.only(left: 30, right: 30),
              padding: const EdgeInsets.only(left: 5, right: 5),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: const Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Column(
                      children: [
                        MyTextField(
                          labelText: 'Email',
                          hintText: 'usuario@ufpi.edu.br',
                          keyboardType: TextInputType.emailAddress,
                          passWord: false,
                        ),
                        MyTextField(
                          labelText: 'Senha',
                          hintText: '',
                          keyboardType: TextInputType.visiblePassword,
                          passWord: true,
                        ),
                      ],
                    ),
                    
                    ButtonLogin(title: 'Login',),
                    ColunmLoginAndGit(authMode: AuthMode.login,)
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
