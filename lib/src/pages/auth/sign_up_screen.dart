import 'package:bookcase/src/pages/auth/components/custom_text_fields.dart';
import 'package:flutter/material.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;

    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: size.height,
          width: size.width,
          child: Stack(
            children: [
              Column(
                children: [
                  Container(
                    margin: const EdgeInsets.symmetric(
                      vertical: 80,
                    ),
                    height: 180,
                    child: Image.asset('assets/logos/logo.png'),
                  ),
                  SizedBox(
                    height: 50,
                    child: Image.asset('assets/logos/bookcase.png'),
                  ),

                  //Formulário
                  Container(
                    padding: const EdgeInsets.symmetric(
                      horizontal: 32,
                      vertical: 40,
                    ),
                    child: Column(
                      children: [
                        const CustomTextField(label: 'Nome Completo'),
                        const CustomTextField(label: 'E-mail'),
                        const CustomTextField(label: 'Senha', isSecret: true),
                        const CustomTextField(
                            label: 'Confirmar Senha', isSecret: true),
                        SizedBox(
                          height: 35,
                          width: 180,
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(25))),
                            onPressed: () {},
                            child: const Text(
                              'Cadastrar',
                              style: TextStyle(fontSize: 16),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              Positioned(
                right: 10,
                top: 10,
                child: SafeArea(
                  child: IconButton(
                    onPressed: () {
                      Navigator.of(context).pop();
                    },
                    icon: const Icon(Icons.close),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
