import 'package:algoeduc/models/cores.dart';
import 'package:algoeduc/telas/videoaulas/telavideo.dart';
import 'package:flutter/material.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

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
  
  late YoutubePlayerController _controller;

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
          onTap: () {
			_controller = YoutubePlayerController(
				initialVideoId: "mV_NKVG1h90",
				flags: const YoutubePlayerFlags(
					autoPlay: false,
					mute: false,
				),
			);
			Navigator.push(
			  context,
			  MaterialPageRoute(
				builder: (context) => TelaVideo(_controller),
			  ),
			);
		  },
          title: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                nome[index],
                style: const TextStyle(
                  fontFamily: "Poppins",
                  fontWeight: FontWeight.w600,
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
      ),
    );
  }
}
