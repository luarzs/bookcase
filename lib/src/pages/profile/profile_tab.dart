import 'package:flutter/material.dart';

import '../auth/sign_in_screen.dart';
import '../auth/sign_up_screen.dart';

class ProfileTab extends StatelessWidget {
  const ProfileTab({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            margin: const EdgeInsets.all(16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(25),
            ),
            child: Column(
              children: [
                Column(
                  children: [
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (c) {
                              return const SignInScreen();
                            },
                          ),
                        );
                      },
                      child: const Text('Fazer Login'),
                    ),
                    TextButton(
                      onPressed: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (c) {
                              return const SignUpScreen();
                            },
                          ),
                        );
                      },
                      child: const Text('Cadastre-se'),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
