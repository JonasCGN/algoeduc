import 'package:algoeduc/models/cores.dart';
import 'package:algoeduc/rotas/app_rotas.dart';
import 'package:flutter/material.dart';

enum AuthMode { signup, login }

class ColunmLoginAndGit extends StatelessWidget {
  final AuthMode authMode;
  const ColunmLoginAndGit({
    super.key,
    required this.authMode,
  });
  
  @override
  

  Widget build(BuildContext context) {
	String texto =
  		(authMode == AuthMode.login)
		? 
		'Não tem uma conta? Cadastre-se'
		: 
		'Já tem uma conta? Entre';

    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: TextButton(
            onPressed: () {
              authMode == AuthMode.login
                  ? Navigator.pushNamedAndRemoveUntil(
                      context,
                      AppRoutes.cadastro,
                      (route) => route.isFirst,
                    )
                  : Navigator.pushNamedAndRemoveUntil(
                      context,
                      AppRoutes.login,
                      (route) => route.isFirst,
                    );
            },
            child: Text(
              texto,
              style: const TextStyle(
				fontFamily: "Staatliches",
                color: MyColors.azulClaro,
              ),
            ),
          ),
        ),
        TextButton(
          onPressed: () {},
          child: const CircleAvatar(
            backgroundImage: NetworkImage(
              'https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png',
            ),
            radius: 20,
          ),
        ),
      ],
    );
  }
}
