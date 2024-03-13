import 'package:algoeduc/models/cores.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  var nome = [
	"Primeiros passos",
	"Estrutura de condição",
	"Estruturas de repetição",
	"Estrutura de manipulação",
	"Funções",
	"Ponteiro"
  ];
  
  @override

  Widget build(BuildContext context) {
    return ListView.builder(
			itemCount: nome.length,
			itemBuilder: (context, index) => Container(
				decoration: BoxDecoration(
					color: MyColors.cinza,
					borderRadius: BorderRadius.circular(10),
				),
				margin: const EdgeInsets.all(20),
				padding: const EdgeInsets.all(5),
				child: ListTile(
							onTap: (){
								print("Clicou no item $index");
							},
							title: Row(
								mainAxisAlignment: MainAxisAlignment.spaceBetween,
								children: <Widget>[
									Text(
										nome[index],
										style: const TextStyle(
											fontFamily: "Poppins",
											fontWeight: FontWeight.w600
										),
									),
									const Icon(
										Icons.keyboard_double_arrow_right_outlined,
										color: Colors.black,
										size: 40,
									)
								],
							),
						),
					
			
			)
			
		);
  }
}