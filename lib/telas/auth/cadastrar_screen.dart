import 'package:algoeduc/models/cores.dart';
import 'package:algoeduc/telas/auth/components/my_button_login.dart';
import 'package:algoeduc/telas/auth/components/my_colunm_login_and_git.dart';
import 'package:algoeduc/telas/auth/components/my_text_field.dart';
import 'package:flutter/material.dart';

class CadratrarScreen extends StatefulWidget {
  const CadratrarScreen({super.key});

  @override
  State<CadratrarScreen> createState() => _CadratrarState();
}

class _CadratrarState extends State<CadratrarScreen> {

  final TextEditingController _userEmailController = TextEditingController();
  final TextEditingController _userPasswordController = TextEditingController();

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
                child: Column(
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
                          controller: _userEmailController,
                        ),
                        MyTextField(
                          labelText: 'Senha',
                          hintText: '',
                          keyboardType: TextInputType.visiblePassword,
                          passWord: true,
                          controller: _userPasswordController
                          ,
                        ),
                      ],
                    ),
                    const ButtonLogin(title: 'Cadastrar',),
                    const ColunmLoginAndGit(authMode: AuthMode.signup,)
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
