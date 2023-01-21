import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:app/src/utils/colors.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() {
    return _Register();
  }
}

class _Register extends State<Register> {
  bool obscured = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const GradientText("Mooviey", gradient: appBarText),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "/#third");
              },
              child: const Text("Exit", style: TextStyle(color: Colors.white)))
        ],
      ),
      backgroundColor: natural900Color,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text("Create Your Account",
                  style: TextStyle(color: Colors.white)),
              const SizedBox(height: 20),
              const Text(
                  "Add your account to explore all of the feature we provided!",
                  style: TextStyle(color: natural400Color, fontSize: 15)),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: TextField(
                  obscureText: false,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      filled: true,
                      focusColor: Colors.white,
                      fillColor: natural700Color,
                      border: OutlineInputBorder(),
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(177, 178, 178, 1)),
                      hintText: "Name"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: TextField(
                  obscureText: false,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      filled: true,
                      focusColor: Colors.white,
                      fillColor: natural700Color,
                      border: OutlineInputBorder(),
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(177, 178, 178, 1)),
                      hintText: "Name@yourmail.com"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: TextField(
                  obscureText: false,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      filled: true,
                      focusColor: Colors.white,
                      fillColor: natural700Color,
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(color: natural400Color),
                      hintText: "Phone number"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      filled: true,
                      focusColor: Colors.white,
                      fillColor: natural700Color,
                      border: OutlineInputBorder(),
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(177, 178, 178, 1)),
                      hintText: "Password"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  width: 358,
                  height: 48,
                  child: TextButton(
                    onPressed: () {},
                    style:
                        TextButton.styleFrom(backgroundColor: primaryB500color),
                    child: const Text("Sign In",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                  padding: EdgeInsets.all(5),
                  child: Divider(
                    color: Colors.white,
                  )),
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  width: 358,
                  height: 48,
                  child: TextButton.icon(
                    icon: const Icon(Icons.golf_course_sharp),
                    label: const Text("Continue With Google",
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                    style:
                        TextButton.styleFrom(backgroundColor: natural700Color),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  width: 358,
                  height: 48,
                  child: TextButton.icon(
                    icon: const Icon(
                      Icons.apple,
                      color: Colors.white,
                    ),
                    label: const Text("Continue With Apple",
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                    style:
                        TextButton.styleFrom(backgroundColor: natural700Color),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: RichText(
                  text: TextSpan(
                      text: "Already Have An Account? ",
                      style: const TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                            text: "Log In",
                            style: const TextStyle(color: Colors.yellow),
                            recognizer: TapGestureRecognizer()
                              ..onTap =
                                  () => Navigator.pushNamed(context, "/login")),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}

class Login extends StatefulWidget {
  const Login({super.key});

  @override
  State<StatefulWidget> createState() {
    return _Login();
  }
}

class _Login extends State<Login> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const GradientText("Mooviey", gradient: appBarText),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        actions: [
          TextButton(
              onPressed: () {
                Navigator.popAndPushNamed(context, "/#third");
              },
              child: const Text("Exit", style: TextStyle(color: Colors.white)))
        ],
      ),
      backgroundColor: natural900Color,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            // mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text("Log in your account",
                  style: TextStyle(color: Colors.white)),
              const SizedBox(height: 20),
              const Text(
                  "Log in your account to explore all of the feature we provided!",
                  style: TextStyle(color: natural400Color, fontSize: 15)),
              const SizedBox(
                height: 40,
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: TextField(
                  obscureText: false,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      filled: true,
                      focusColor: Colors.white,
                      fillColor: natural700Color,
                      border: OutlineInputBorder(),
                      hintStyle: TextStyle(color: natural400Color),
                      hintText: "Enter your email / Phone number"),
                ),
              ),
              const Padding(
                padding: EdgeInsets.all(5),
                child: TextField(
                  obscureText: true,
                  style: TextStyle(color: Colors.white),
                  decoration: InputDecoration(
                      filled: true,
                      focusColor: Colors.white,
                      fillColor: natural700Color,
                      border: OutlineInputBorder(),
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(177, 178, 178, 1)),
                      hintText: "Password"),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  width: 358,
                  height: 48,
                  child: TextButton(
                    onPressed: () {
                      Navigator.pushReplacementNamed(context, "/personilized");
                    },
                    style:
                        TextButton.styleFrom(backgroundColor: primaryB500color),
                    child: const Text("Sign In",
                        style: TextStyle(color: Colors.white)),
                  ),
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              const Padding(
                  padding: EdgeInsets.all(5),
                  child: Divider(
                    color: Colors.white,
                  )),
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  width: 358,
                  height: 48,
                  child: TextButton.icon(
                    icon: const Icon(Icons.golf_course_sharp),
                    label: const Text("Continue With Google",
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                    style:
                        TextButton.styleFrom(backgroundColor: natural700Color),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: SizedBox(
                  width: 358,
                  height: 48,
                  child: TextButton.icon(
                    icon: const Icon(
                      Icons.apple,
                      color: Colors.white,
                    ),
                    label: const Text("Continue With Apple",
                        style: TextStyle(color: Colors.white)),
                    onPressed: () {},
                    style:
                        TextButton.styleFrom(backgroundColor: natural700Color),
                  ),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5),
                child: RichText(
                  text: TextSpan(
                      text: "Dont't have an account yet? ",
                      style: const TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                            text: "Sign Up",
                            style: const TextStyle(color: Colors.yellow),
                            recognizer: TapGestureRecognizer()
                              ..onTap = () =>
                                  Navigator.pushNamed(context, "/register")),
                      ]),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
