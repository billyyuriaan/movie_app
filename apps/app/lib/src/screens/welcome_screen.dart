import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:app/src/utils/colors.dart';

class WelcomeScreenFirst extends StatelessWidget {
  const WelcomeScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const GradientText("Mooviez", gradient: appBarText),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: natural900Color,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              "assets/image/notfound.png",
              width: 358,
              height: 303,
            ),
            // ignore: prefer_const_constructors
            Center(
              child: const Text(
                "All in One",
                style: TextStyle(color: Colors.white, fontSize: 28),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            // ignore: prefer_const_constructors
            Center(
              child: const Text(
                "Watch and Stream the movie in one app",
                style: TextStyle(color: natural700Color, fontSize: 18),
              ),
            ),
          ],
        ),
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          OutlinedButton(
            // ignore: prefer_const_constructors
            style: OutlinedButton.styleFrom(
                side: const BorderSide(width: 1.0, color: Colors.blue)),
            onPressed: () {
              Navigator.popAndPushNamed(context, "/login");
            },
            child: const Text(
              "Log In",
              style: TextStyle(color: Colors.white),
            ),
          ),
          ElevatedButton(
            onPressed: () {
              Navigator.popAndPushNamed(context, "/register");
            },
            // ignore: sort_child_properties_last
            child: const Text(
              "Sign Up",
              style: TextStyle(color: Colors.black),
            ),
            style: const ButtonStyle(
                backgroundColor: MaterialStatePropertyAll(Colors.blueAccent)),
          )
        ],
      ),
    );
  }
}

class WelcomeScreenSecond extends StatelessWidget {
  const WelcomeScreenSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const GradientText("Mooviey", gradient: appBarText),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: natural900Color,
      body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/image/notfound.png",
                    width: 300,
                    height: 300,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text("All in One",
                  style: TextStyle(color: Colors.white, fontSize: 40)),
              const SizedBox(
                height: 10,
              ),
              const Text("Watch and stream the movie in one app2",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
            ],
          )),
      floatingActionButton: Container(
        padding: const EdgeInsets.all(10),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            SizedBox(
                width: 67,
                height: 40,
                child: FloatingActionButton.extended(
                  backgroundColor: primaryB500color,
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  onPressed: () {
                    Navigator.pushNamed(context, "/#third");
                  },
                  label:
                      const Text("Skip", style: TextStyle(color: Colors.white)),
                )),
            SizedBox(
                width: 67,
                height: 40,
                child: FloatingActionButton.extended(
                  backgroundColor: primaryB500color,
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  onPressed: () {
                    Navigator.pushNamed(context, "/#third");
                  },
                  label:
                      const Text("Next", style: TextStyle(color: Colors.white)),
                )),
          ],
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}

class WelcomeScreenThird extends StatelessWidget {
  const WelcomeScreenThird({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const GradientText("Mooviey", gradient: appBarText),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: natural900Color,
      body: Container(
          padding: const EdgeInsets.all(10),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Image.asset(
                    "assets/image/notfound.png",
                    width: 300,
                    height: 300,
                  ),
                ],
              ),
              const SizedBox(
                height: 40,
              ),
              const Text("All in One",
                  style: TextStyle(color: Colors.white, fontSize: 40)),
              const SizedBox(
                height: 10,
              ),
              const Text("Watch and stream the movie in one app",
                  style: TextStyle(color: Colors.white, fontSize: 20)),
              const SizedBox(
                height: 40,
              ),
            ],
          )),
      floatingActionButton: Container(
          padding: const EdgeInsets.all(10),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Material(
                    color: primaryB500color,
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, "/register");
                      },
                      child: const SizedBox(
                        height: kToolbarHeight,
                        width: 390,
                        child: Center(
                          child: Text("Get Started !",
                              style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white)),
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  RichText(
                    text: TextSpan(
                        text: "Already Have An Account? ",
                        style: const TextStyle(color: Colors.white),
                        children: [
                          TextSpan(
                              text: "Log In",
                              style: const TextStyle(color: Colors.yellow),
                              recognizer: TapGestureRecognizer()
                                ..onTap = () =>
                                    Navigator.pushNamed(context, "/login")),
                        ]),
                  )
                ],
              )
            ],
          )),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
