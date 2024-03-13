import 'package:algoeduc/models/cores.dart';
import 'package:algoeduc/rotas/app_rotas.dart';
import 'package:algoeduc/telas/telaprincipal/Home.dart';
import 'package:algoeduc/telas/telaprincipal/components/my_text_field.dart';
import 'package:flutter/material.dart';

class CadastrarUsuario extends StatefulWidget {
  const CadastrarUsuario({super.key});

  @override
  State<CadastrarUsuario> createState() => CadastrarUsuarioState();
}

class CadastrarUsuarioState extends State<CadastrarUsuario> {
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
                  children: <Widget>[
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
						padding: const EdgeInsets.only(left: 15, right: 15),
						child: Column(
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
									controller: _userPasswordController,
								),
							
								const ButtonLogin(),
								const ColunmLoginAndGit()
							],
						),
					)
                  ],
                )
      ),
    );
  }
}

class ButtonLogin extends StatelessWidget {
  const ButtonLogin({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(left: 8.0, right: 8.0, top: 18.0),
      child: ElevatedButton(
        style: ButtonStyle(
          backgroundColor: MaterialStateProperty.all(
            const Color.fromARGB(255, 27, 31, 35),
          ),
          fixedSize: MaterialStateProperty.all(
            const Size(275, 25),
          ),
        ),
        onPressed: () {
			Navigator.push(
				context,
				MaterialPageRoute(
					builder: (context) => const Home(),
				),
			);
		},
        child: const Text(
          'CADASTRAR',
          style: TextStyle(
			color: Colors.white,
			fontFamily: "Staatliches",
		  ),
        ),
      ),
    );
  }
}

class ColunmLoginAndGit extends StatelessWidget {
  const ColunmLoginAndGit({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.only(left: 8.0, right: 8.0),
          child: TextButton(
            onPressed: () {
              Navigator.pushNamedAndRemoveUntil(
                context,
                AppRoutes.login,
                (route) => route.isFirst
              );
            },
            child: const Text(
              'VOLTAR PARA TELA DE LOGIN',
              style: TextStyle(
                color: MyColors.azulClaro,
				fontFamily: 'Staatliches',
				fontWeight: FontWeight.w400
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