import 'package:algoeduc/rotas/app_rotas.dart';
import 'package:flutter/material.dart';

class ButtonLogin extends StatelessWidget {
  final String title;
  const ButtonLogin({super.key, required this.title});

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
			Navigator.pushNamed(
				context, 
				AppRoutes.home
			);
		},
        child: Text(
          title,
          style: const TextStyle(color: Colors.white),
        ),
      ),
    );
  }
}
