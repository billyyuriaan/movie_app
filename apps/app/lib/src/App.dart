import 'package:flutter/material.dart';
import 'package:animations/animations.dart';
import 'package:app/src/screens/welcome_screen.dart';
import 'package:app/src/screens/auth_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mooviey",
      theme: ThemeData(
          // ignore: prefer_const_constructors
          pageTransitionsTheme: PageTransitionsTheme(
        // ignore: prefer_const_literals_to_create_immutables
        builders: {
          TargetPlatform.android: const SharedAxisPageTransitionsBuilder(
              transitionType: SharedAxisTransitionType.horizontal),
          TargetPlatform.iOS: const SharedAxisPageTransitionsBuilder(
              transitionType: SharedAxisTransitionType.horizontal)
        },
      )),
      initialRoute: '/',
      routes: {
        "/": (context) => const WelcomeScreenFirst(),
        "/#second": (context) => const WelcomeScreenSecond(),
        "/#third": (context) => const WelcomeScreenThird(),
        "/register": (context) => const Register(),
        "/login": (context) => const Login()
      },
    );
  }
}
