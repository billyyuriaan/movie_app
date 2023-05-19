import 'package:flutter/material.dart';
import 'package:app/src/utils/colors.dart';

class SessionPage extends StatelessWidget {
  const SessionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        title: const GradientText(
          "Mooviey",
          gradient: appBarText,
        ),
        elevation: 0.0,
      ),
      backgroundColor: natural900Color,
      body: SafeArea(
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              Image.asset(
                "assets/image/showtime.jpeg",
                width: 163,
                height: 141,
              ),
              const SizedBox(
                height: 24,
              ),
              const Text(
                "Watch Cinema",
                style: TextStyle(color: natural400Color, fontSize: 18),
              ),
              const SizedBox(
                height: 10,
              ),
              const SizedBox(
                width: 163,
                height: 141,
                child: Text(
                  "Watch your favorite film with your love most",
                  style: TextStyle(color: natural700Color, fontSize: 12),
                  textAlign: TextAlign.center,
                ),
              )
            ],
          ),
        ),
      ),
      floatingActionButton: TextButton(
        style: TextButton.styleFrom(
            backgroundColor: Colors.blue, fixedSize: const Size(100, 40)),
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(
              context, "/cinemaHome", (route) => false);
        },
        child: const Text(
          "Next",
          style: TextStyle(color: Colors.white, fontSize: 24),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
