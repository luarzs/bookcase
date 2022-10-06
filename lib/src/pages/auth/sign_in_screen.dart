import 'package:bookcase/src/pages/auth/components/custom_text_fields.dart';
import 'package:bookcase/src/pages/auth/sign_up_screen.dart';
import 'package:bookcase/src/pages/base/base_screen.dart';
import 'package:flutter/material.dart';

class SignInScreen extends StatelessWidget {
  const SignInScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: SafeArea(
            child: Column(children: [
              Container(
                margin: const EdgeInsets.symmetric(
                  vertical: 60,
                ),
                height: 200,
                child: Image.asset('assets/logos/logo.png'),
              ),
              SizedBox(
                height: 50,
                child: Image.asset('assets/logos/bookcase.png'),
              ),
              Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 32,
                  vertical: 40,
                ),
                decoration: const BoxDecoration(
                  color: Colors.white,
                ),
                child: Column(
                  children: [
                    //Email
                    const CustomTextField(
                      label: 'E-mail',
                    ),

                    //Senha
                    const CustomTextField(
                      label: 'Senha',
                      isSecret: true,
                    ),

                    //Esqueci a senha
                    Align(
                      alignment: Alignment.centerLeft,
                      child: TextButton(
                          onPressed: () {},
                          child: const Text('Esqueceu a senha?')),
                    ),

                    //Botão de entrar
                    SizedBox(
                      height: 35,
                      width: 180,
                      child: ElevatedButton(
                          style: ElevatedButton.styleFrom(
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(25))),
                          onPressed: () {
                            Navigator.of(context).pushReplacement(
                                MaterialPageRoute(builder: (c) {
                              return const BaseScreen();
                            }));
                          },
                          child: const Text(
                            'Entrar',
                            style: TextStyle(fontSize: 16),
                          )),
                    ),

                    //Criar conta
                    Align(
                        alignment: Alignment.center,
                        child: TextButton(
                            onPressed: () {
                              Navigator.of(context).push(
                                MaterialPageRoute(builder: (c) {
                                  return const SignUpScreen();
                                }),
                              );
                            },
                            child: const Text('Criar Conta'))),
                  ],
                ),
              )
            ]),
          ),
        ),
      ),
    );
  }
}
