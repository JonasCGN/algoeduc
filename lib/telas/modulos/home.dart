import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return const Center(
	  child: Text(
		"Módulos",
		style: TextStyle(
			fontSize: 30,
			fontFamily: "Poppins",
			fontWeight: FontWeight.w600
		),
	  ),
	);
  }
}