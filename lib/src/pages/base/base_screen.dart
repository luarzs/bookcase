import 'package:bookcase/src/pages/auth/sign_in_screen.dart';
import 'package:bookcase/src/pages/home/explorer_tab.dart';
import 'package:bookcase/src/pages/home/home_tab.dart';
import 'package:bookcase/src/pages/library/library_tab.dart';
import 'package:bookcase/src/pages/plan/plan_tab.dart';
import 'package:bookcase/src/pages/profile/profile_tab.dart';
import 'package:flutter/material.dart';

import '../../config/custom_colors.dart';

class BaseScreen extends StatefulWidget {
  const BaseScreen({Key? key}) : super(key: key);

  @override
  State<BaseScreen> createState() => _BaseScreenState();
}

class _BaseScreenState extends State<BaseScreen> {
  int currentIndex = 0;
  final pageController = PageController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      //App Bar
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        foregroundColor: CustomColor.customSwatchColor,
        centerTitle: true,
        actions: [
          SizedBox(
            width: 200,
            child: Image.asset(
              alignment: Alignment.center,
              'assets/logos/bookcase.png',
            ),
          ),
          IconButton(
            onPressed: () {
              Navigator.of(context).pushReplacement(
                MaterialPageRoute(
                  builder: (c) {
                    return const SignInScreen();
                  },
                ),
              );
            },
            icon: const Icon(Icons.exit_to_app_outlined),
          )
        ],
      ),
      body: PageView(
        physics: const NeverScrollableScrollPhysics(),
        controller: pageController,
        children: const [
          HomeTab(),
          ExplorerTab(),
          PlanTab(),
          LibraryTab(),
          ProfileTab(),
        ],
      ),

      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.white,
        iconSize: 30,
        currentIndex: currentIndex,
        onTap: (index) {
          setState(
            () {
              currentIndex = index;
              pageController.jumpToPage(index);
            },
          );
        },
        type: BottomNavigationBarType.fixed,
        selectedItemColor: const Color(0xFF22B14C),
        unselectedItemColor: const Color(0xFF808080),
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home_outlined),
            label: 'Página Inicial',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.search_outlined),
            label: 'Explorar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.checklist_outlined),
            label: 'Plano de Leitura',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.library_books_outlined),
            label: 'Biblioteca',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person_outlined),
            label: 'Perfil',
          ),
        ],
      ),
    );
  }
}
