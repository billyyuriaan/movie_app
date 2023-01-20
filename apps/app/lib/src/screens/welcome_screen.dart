import 'dart:io';
import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

class WelcomeScreenFirst extends StatelessWidget {
  const WelcomeScreenFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Moovie", style: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
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
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  onPressed: () {},
                  label:
                      const Text("Skip", style: TextStyle(color: Colors.white)),
                )),
            SizedBox(
                width: 67,
                height: 40,
                child: FloatingActionButton.extended(
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  onPressed: () {
                    Navigator.pushNamed(context, "/#second");
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

class WelcomeScreenSecond extends StatelessWidget {
  const WelcomeScreenSecond({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Moovie", style: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
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
                  shape: const BeveledRectangleBorder(
                      borderRadius: BorderRadius.all(Radius.circular(2))),
                  onPressed: () {},
                  label:
                      const Text("Skip", style: TextStyle(color: Colors.white)),
                )),
            SizedBox(
                width: 67,
                height: 40,
                child: FloatingActionButton.extended(
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
    var login = InkWell(
      onTap: () {},
      child: const Text("Log In", style: TextStyle(color: Colors.yellow)),
    );

    return Scaffold(
      appBar: AppBar(
        title: const Text("Moovie", style: TextStyle(color: Colors.blue)),
        backgroundColor: Colors.black,
      ),
      backgroundColor: Colors.black,
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
                    color: Colors.blue,
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
