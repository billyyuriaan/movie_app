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
              const SizedBox(
                width: 20,
              ),
              Column(
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  const Text(
                    "AVATAR: THE WAY OF WATER",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    "Genre     : Sci-Fi, Action, Adventure",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    "Director  : James Cameroon",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    "Duration  : 3h 12m",
                    style: TextStyle(color: Colors.white),
                  ),
                  const Text(
                    "Genre     : PG - 13",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              )
            ],
          ),
          const SizedBox(
            height: 50,
          ),
          Container(
            child: Column(
              children: [
                const Text(
                  "Sypnosis",
                  style: TextStyle(color: Colors.white),
                ),
                const Text(
                  "Jake Sully and Ney'tiri have formed a family and are doing everything to stay together. However, they must leave their home and explore the regions of Pandora. When an ancient threat resurfaces, Jake must fight a difficult war against the humans.",
                  style: TextStyle(color: Colors.white),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              FilledButton(onPressed: () {}, child: Text("About")),
              FilledButton(onPressed: () {}, child: Text("Schedule"))
            ],
          ),
        ],
      )),
    );
  }
}
