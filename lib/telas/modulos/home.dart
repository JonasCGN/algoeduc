import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _hoveredIndex = -1;

  final List<String> _modulos = [
    'Módulo base',
    'Módulo if-else',
    'Módulo loop',
    'Módulo vetor',
  ];

  final List<String> _descricao = [
    'Estruturas básicas, variáveis e bibliotecas',
    'Estruturas condicionais if, else-if e else',
    'Estruturas de repetição for, while e do-while',
    'Manipulação de arrays e listas',
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Container(
          decoration: const BoxDecoration(
            color: Color.fromARGB(255, 244, 244, 244),
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          margin: const EdgeInsets.only(left: 30, right: 30),
          padding: const EdgeInsets.all(16.0),
        ),
        const SizedBox(height: 10),
        Container(
          decoration: const BoxDecoration(
            color: Colors.transparent,
            borderRadius: BorderRadius.all(
              Radius.circular(25),
            ),
          ),
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              for (int i = 0; i < _modulos.length; i++) //Percorre a lista de módulos
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8.0),
                  //.symmetric é usado para definir espaçamentos verticais e horizontais iguais
                  child: Row(
                    children: [
                      GestureDetector(
                        //Detecta gestos do usuário
                        onTap: () {
                          //Quando clicado
                        },
                        child: ClipOval(
                          //ClipOval é usado para que o botão tenha a forma de um círculo
                          child: Material(
                            color: _hoveredIndex == i
                                ? const Color.fromARGB(255, 67, 119, 162)
                                : Colors.transparent,
                            child: InkWell(
                              //InkWell é usado para que o botão tenha a animação de toque
                              onTap: () {
                                //Quando clicado
                              },
                              onHover: (value) {
                                //value é um parâmetro que indica se o cursor está sobre o botão
                                setState(() {
                                  _hoveredIndex = value ? i : -1;
                                  //Se o cursor estiver sobre o botão, _hoveredIndex recebe o valor de i, caso contrário, recebe -1
                                });
                              },
                              child: Container(
                                width: 60,
                                height: 60,
                                alignment: Alignment.center,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: Border.all(
                                      color: const Color.fromARGB(255, 67, 119, 162)),
                                ),
                                child: Text(
                                  "${i + 1}", //Aqui é onde o índice do módulo é exibido
                                  style: TextStyle(
                                      color: _hoveredIndex == i
                                          ? Colors.white
                                          : const Color.fromARGB(255, 67, 119, 162)),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(width: 10.0),
                      Flexible(
                        //Flexible é usado para que o texto não quebre a linha
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _modulos[i],
                              style: const TextStyle(
                                fontWeight: FontWeight.bold,
                                fontSize: 18,
                              ),
                            ),
                            Text(
                              _descricao[i],
                              style: const TextStyle(
                                fontSize: 14,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
            ],
          ),
        ),
      ],
    );
  }
}