import 'package:flutter/material.dart';
import 'package:app/src/screens/welcome_screen.dart';
import 'package:app/src/screens/auth_screen.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: "Mooviey",
      theme: ThemeData(),
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
