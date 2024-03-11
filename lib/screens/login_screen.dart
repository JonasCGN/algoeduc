import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final mediaQuery = MediaQuery.of(context);
    final sizeWidth = mediaQuery.size.width;
    final sizeHeight = mediaQuery.size.height;

    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 2,
            child: Image.asset(
              "assets/icon/icon.png",
              fit: BoxFit.contain,
            ),
          ),
          Expanded(
            flex: 3,
            child: Container(
              decoration: const BoxDecoration(
                color: Color.fromARGB(255, 236, 236, 236),
                borderRadius: BorderRadius.all(
                  Radius.circular(25),
                ),
              ),
              margin: const EdgeInsets.all(20),
              padding: const EdgeInsets.all(10),
              child: Container(
                margin: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                       Column(
                        children: [
                          TextField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Username',
                            ),
                          ),
                          TextField(
                            decoration: InputDecoration(
                              border: UnderlineInputBorder(),
                              labelText: 'Senha',
                            ),
                          ),
                        ],
                      ),

                    Container(
                      padding: const EdgeInsets.all(8.0),
                      width: sizeWidth,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                          backgroundColor: Colors.blue,
                        ),
                        onPressed: () {
                        },
                        child: const Text(
                          'Login',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.only(left: 8.0, right: 8.0),
                      width: sizeWidth,
                      child: TextButton(
                        onPressed: () {
                        },
                        child: const Text('Cadastrar'),
                      ),
                    ),
                    Container(
                      child: TextButton(
                        onPressed: () {
                        },
                        child: const CircleAvatar(
                          backgroundImage: NetworkImage(
                              'https://github.githubassets.com/images/modules/logos_page/GitHub-Mark.png'),
                          radius: 20,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
