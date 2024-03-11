import 'package:algoeduc/utils/app_routes.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      body: Column(
        children: [
          ElevatedButton(
            onPressed: () {
              Navigator.of(context).pushNamed(AppRoutes.loginPage);
            },
            child: const Icon(Icons.login),
          ),
          const Center(
            child: Text('Welcome to AlgoEduc!'),
          ),
        ],
      ),
    );
  }
}
