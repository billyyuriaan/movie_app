import 'package:flutter/material.dart';
import 'package:app/src/utils/colors.dart';

class CinemaSession extends StatefulWidget {
  const CinemaSession({super.key});

  @override
  State<CinemaSession> createState() => _CinemaSessionState();
}

class _CinemaSessionState extends State<CinemaSession> {
  int _selectedIdx = 0;
  List<Widget> _listItems = [AboutMovie(), ScheduleMovie()];
  String _selectedBtn = "About";

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
          child: SingleChildScrollView(
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
                FilledButton(
                  onPressed: () {
                    setState(() {
                      _selectedIdx = 0;
                      _selectedBtn = "About";
                    });
                  },
                  child: Text("About"),
                  style: FilledButton.styleFrom(
                      backgroundColor:
                          _selectedBtn == "About" ? Colors.blue : Colors.black),
                ),
                FilledButton(
                  onPressed: () {
                    setState(() {
                      _selectedIdx = 1;
                      _selectedBtn = "Schedule";
                    });
                  },
                  child: Text("Schedule"),
                  style: FilledButton.styleFrom(
                      shadowColor: _selectedBtn == "Schedule"
                          ? Colors.blue
                          : Colors.black),
                )
              ],
            ),
            const SizedBox(
              height: 100,
            ),
            _listItems[_selectedIdx]
          ],
        ),
      )),
    );
  }
}

class AboutMovie extends StatefulWidget {
  const AboutMovie({super.key});

  @override
  State<AboutMovie> createState() => _AboutMovieState();
}

class _AboutMovieState extends State<AboutMovie> {
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Text(
        "Jake Sully and Ney'tiri have formed a family and are doing everything to stay together. However, they must leave their home and explore the regions of Pandora. When an ancient threat resurfaces, Jake must fight a difficult war against the humans.",
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}

class ScheduleMovie extends StatefulWidget {
  const ScheduleMovie({super.key});

  @override
  State<ScheduleMovie> createState() => _ScheduleMovieState();
}

class _ScheduleMovieState extends State<ScheduleMovie> {
  @override
  Widget build(BuildContext context) {
    return Column(mainAxisAlignment: MainAxisAlignment.center, children: [
      Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          for (int i = 16; i <= 22; i++)
            Container(
              decoration: BoxDecoration(
                  borderRadius: const BorderRadius.all(Radius.circular(5)),
                  color: Colors.blue),
              width: 70,
              height: 50,
              child: Column(
                children: [
                  Text("${i} Juni"),
                  const Text(
                    "Today",
                    style: TextStyle(fontSize: 24),
                  ),
                ],
              ),
            ),
        ],
      )
    ]);
  }
}
