import 'package:algoeduc/models/cores.dart';
import 'package:flutter/material.dart';
import 'package:algoeduc/telas/monitor/home.dart' as monitor;
import 'package:algoeduc/telas/modulos/home.dart' as modulos;
import 'package:algoeduc/telas/videoaulas/home.dart' as videoaulas;

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final _telas = [
    const videoaulas.Home(),
    const modulos.Home(),
    const monitor.Home()
  ];

  var nameTela = ["VIDEOAULAS", "MÓDULOS", "MONITOR"];

  var _indiceTela = 1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 65,
        backgroundColor: MyColors.azulClaro,
        title: Row(
          children: <Widget>[
            Image.asset(
              "images/logo_branca.png",
              width: 60,
              height: 100,
            ),
            Text(
              nameTela[_indiceTela],
              style: const TextStyle(
                color: MyColors.branco,
                fontSize: 25,
                fontFamily: 'Staatliches',
              ),
            )
          ],
        ),
        elevation: 0, // Remove a sombra do AppBar
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
            bottomLeft: Radius.circular(10.0),
            bottomRight: Radius.circular(10.0),
          ),
        ),
      ),
      body: Container(
        child: _telas[_indiceTela],
      ),
      bottomNavigationBar: ClipRRect(
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(10.0),
          topRight: Radius.circular(10.0),
        ),
        child: BottomNavigationBar(
          currentIndex: _indiceTela,
          onTap: (index) {
            setState(
              () {
                _indiceTela = index;
                _telas[_indiceTela];
              },
            );
          },
          type: BottomNavigationBarType.fixed,
          fixedColor: MyColors.ciano,
          unselectedItemColor: MyColors.branco,
          backgroundColor: MyColors.azulClaro,
          items: const [
            BottomNavigationBarItem(
              icon: Icon(Icons.video_call),
              label: "VideoAulas",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.mode),
              label: "Módulos",
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.people),
              label: "Monitor",
            )
          ],
        ),
      ),
    );
  }
}
