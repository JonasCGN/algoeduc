import 'package:algoeduc/models/cores.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:youtube_player_flutter/youtube_player_flutter.dart';

class TelaVideo extends StatefulWidget {
  final YoutubePlayerController _controller;

  const TelaVideo(this._controller, {super.key});

  @override
  State<TelaVideo> createState() => _TelaVideoState();
}

class _TelaVideoState extends State<TelaVideo> {
  var titulo = [
	"Video 1",
	"Video 2",
	"Video 3",
	"Video 4",
	"Video 5",
	"Video 6",
	"Video 7",
	"Video 8",
	
   ];

   var descricao = [
	"Descrição",
	"Descrição",
	"Descrição",
	"Descrição",
	"Descrição",
	"Descrição",
	"Descrição",
	"Descrição",
   ];
  
  @override

  Widget build(BuildContext context) {
    return Container(
		decoration: const BoxDecoration(
			color: MyColors.branco,
		),
		child: SingleChildScrollView(
			child: Column(
				crossAxisAlignment: CrossAxisAlignment.start,
				children: <Widget>[
					YoutubePlayer(
						controller: widget._controller,
						showVideoProgressIndicator: true,
						// ignore: avoid_print
						onReady: () => print('Player is ready.'),
					),
					Padding(
						padding: const EdgeInsets.only(top: 16),
						child: Container(
							width: double.infinity,
							decoration: const BoxDecoration(
							border: Border(
								bottom: BorderSide(
								color: MyColors.cinzaEscura,
								width: 1,
								),
							),
							),
							child: const Padding(
								padding: EdgeInsets.only(left: 16, bottom: 16),
								child: Column(
									mainAxisAlignment: MainAxisAlignment.start,
									crossAxisAlignment: CrossAxisAlignment.start,
									children: <Widget>[
										Text(
											"Titulo do Video",
											style: TextStyle(
											decoration: TextDecoration.none,
											fontFamily: "Staatliches",
											fontSize: 24,
											color: MyColors.preto,
											),
										),
										Text(
											"Descrição",
											style: TextStyle(
												decoration: TextDecoration.none,
												fontFamily: "Poppins",
												fontWeight: FontWeight.w300,
												fontSize: 16,
												color: MyColors.preto,
											),
										),
									],
								),
							),
						),
					),
					ListView.builder(
						shrinkWrap: true,
						physics: const NeverScrollableScrollPhysics(),
						itemCount: titulo.length,
						itemBuilder: (context, index) => GestureDetector(
							onTap:(){
								// ignore: avoid_print
								print("Clicou no video ${titulo[index]}");
							},
							child:Container(
									padding: const EdgeInsets.all(16),
									width: double.infinity,
									decoration: const BoxDecoration(
										border: Border(
											bottom: BorderSide(
												color: MyColors.branco,
												width: 1,
											),
										),
									),
									child: Row(
										children: <Widget>[
											Container(
												height: 70,
												width: 120,
												decoration: BoxDecoration(
													shape: BoxShape.rectangle,
													borderRadius: BorderRadius.circular(8),
													image: DecorationImage(
														fit: BoxFit.cover,
														image: Image.asset(
															"images/imagem_16x9.png",
														).image,
													),
												),
											),
											Padding(
												padding: const EdgeInsets.only(left: 14),
												child: Column(
													crossAxisAlignment: CrossAxisAlignment.start,
													children: <Widget>[
														Text(
															titulo[index],
															style: const TextStyle(
															decoration: TextDecoration.none,
															fontFamily: "Staatliches",
															fontSize: 24,
															color: MyColors.preto,
															),
														),
														Text(
															descricao[index],
															style: const TextStyle(
															decoration: TextDecoration.none,
															fontFamily: "Poppins",
															fontWeight: FontWeight.w300,
															fontSize: 16,
															color: MyColors.preto,
															),
														),
													],
												),
											)
										],
									)
								),
							)
						),
				],
			),
		),
	);
  }
}