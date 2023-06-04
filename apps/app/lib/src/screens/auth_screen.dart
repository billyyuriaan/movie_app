import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'package:app/src/screens/home_screen.dart';
import 'package:app/src/utils/colors.dart';
import 'package:app/firebase_options.dart';
import 'package:app/src/firebase/firebase_db.dart';

class Register extends StatefulWidget {
  const Register({super.key});

  @override
  State<Register> createState() {
    return _Register();
  }
}

class _Register extends State<Register> {
  bool obscured = false;

  final TextEditingController _controllerName = TextEditingController();
  final TextEditingController _controllerEmail = TextEditingController();
  final TextEditingController _controllerPhoneNumber = TextEditingController();
  final TextEditingController _controllerPassword = TextEditingController();

  Future<void> firebaseInit() async {
    await Firebase.initializeApp(
        options: DefaultFirebaseOptions.currentPlatform);
  }

  @override
  void initState() {
    firebaseInit();
    super.initState();

    _controllerName.addListener(() {
      final String text = _controllerName.text.toLowerCase();
      _controllerName.value = _controllerName.value.copyWith(
          text: text,
          selection:
              TextSelection(baseOffset: text.length, extentOffset: text.length),
          composing: TextRange.empty);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const GradientText("Mooviey", gradient: appBarText),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
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
              Padding(
                padding: const EdgeInsets.all(5),
                child: TextField(
                  controller: _controllerName,
                  obscureText: false,
                  style: const TextStyle(color: Colors.white),
                  decoration: const InputDecoration(
                      filled: true,
                      focusColor: Colors.white,
                      fillColor: natural700Color,
                      border: OutlineInputBorder(),
                      hintStyle:
                          TextStyle(color: Color.fromRGBO(177, 178, 178, 1)),
                      hintText: "Name"),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(5),
                child: TextField(
                  controller: _controllerEmail,
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
              Padding(
                padding: EdgeInsets.all(5),
                child: TextField(
                  controller: _controllerPhoneNumber,
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
              Padding(
                padding: EdgeInsets.all(5),
                child: TextField(
                  controller: _controllerPassword,
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
                      final dataInput = <String, dynamic>{
                        "username": _controllerName.text,
                        "email": _controllerEmail.text,
                        "phoneNumber": _controllerPhoneNumber.text,
                        "password": _controllerPassword.text,
                        "created_at": Timestamp.fromDate(DateTime.now())
                      };

                      db.collection("users").add(dataInput).then((value) {
                        AlertDialog(
                          title: const Text("Success"),
                          content: const Text("Success On Register Account"),
                          actions: [
                            TextButton(
                                onPressed: () {
                                  Navigator.of(context).pop();
                                  Navigator.popAndPushNamed(context, "/login");
                                },
                                child: const Text("Ok")),
                          ],
                        );
                      });
                    },
                    style:
                        TextButton.styleFrom(backgroundColor: primaryB500color),
                    child: const Text("Sign Up",
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
                              ..onTap = () =>
                                  Navigator.popAndPushNamed(context, "/login")),
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
                      // Navigator.pushReplacementNamed(context, "/personilized");
                      Navigator.popAndPushNamed(context, "/session");
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
                              ..onTap = () => Navigator.popAndPushNamed(
                                  context, "/register")),
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
