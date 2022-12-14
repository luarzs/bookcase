import 'package:bookcase/src/config/custom_colors.dart';
import 'package:flutter/material.dart';

import 'src/pages/auth/sign_in_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: CustomColor.customSwatchColor,
      ),
      home: const SignInScreen(),
    );
  }
}
