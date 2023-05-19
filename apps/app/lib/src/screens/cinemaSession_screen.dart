import 'package:flutter/material.dart';
import 'package:app/src/utils/colors.dart';

class CinemaSession extends StatefulWidget {
  const CinemaSession({super.key});

  @override
  State<CinemaSession> createState() => _CinemaSessionState();
}

class _CinemaSessionState extends State<CinemaSession> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: const GradientText(
          "Mooviez",
          gradient: appBarText,
        ),
      ),
      backgroundColor: natural900Color,
      body: SafeArea(
          child: Column(
        children: [
          Row(
            children: [
              Image.asset("assets/image/card_avatar.jpeg"),
              SizedBox(
                width: 20,
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text("AVATAR: THE WAY OF WATER"),
                  const Text("Genre     : Sci-Fi, Action, Adventure"),
                  const Text("Director  : James Cameroon"),
                  const Text("Duration  : 3h 12m"),
                  const Text("Genre     : PG - 13"),
                ],
              )
            ],
          ),
          Container(
            child: Column(
              children: [const Text("Sypnosis"), const Text("lorem ipsum")],
            ),
          )
        ],
      )),
    );
  }
}
