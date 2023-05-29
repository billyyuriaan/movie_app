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
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                        "AVATAR: THE WAY OF WATER",
                      const Text(
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        "Genre        : Sci-Fi, Action, Adventure",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        "Director     : James Cameroon",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        "Duration     : 3h 12m",
                        style: TextStyle(color: Colors.white),
                      ),
                      const Text(
                        "Genre        : PG - 13",
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
                        backgroundColor: _selectedBtn == "About"
                            ? Colors.blue
                            : Colors.black),
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
                        backgroundColor: _selectedBtn == "Schedule"
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
        floatingActionButton: FloatingActionButton.extended(
            onPressed: () {
              Navigator.pushNamed(context, "/cinemaBooked");
            },
            label: const Text("Buy Ticket")));
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
    return SingleChildScrollView(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            for (int i = 16; i <= 22; i++)
              InkWell(
                onTap: () {},
                child: Container(
                  decoration: const BoxDecoration(
                      borderRadius: BorderRadius.all(Radius.circular(5)),
                      color: Colors.blue),
                  margin: const EdgeInsets.all(10),
                  width: 70,
                  height: 50,
                  child: Column(
                    children: [
                      Text("${i} Juni"),
                      const Text(
                        "Today",
                        style: TextStyle(fontSize: 18),
                      ),
                    ],
                  ),
                ),
              ),
          ],
        ),
        const SizedBox(
          height: 30,
        ),
        Container(
          width: 500,
          height: 150,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/image/cinema_xxi.jpeg"),
                Column(
                  children: [
                    const Text(
                      "Transmart XXI",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "TRANSMART MALL 2ND FLOOR",
                      style: TextStyle(color: Colors.white),
                    ),
                    const Text(
                      "2.2 KM",
                      style: TextStyle(color: Colors.white),
                    ),
                    const Text(
                      "2D",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const Text(
                  "IDR 45.000",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("13.30")),
                ElevatedButton(onPressed: () {}, child: const Text("15.30")),
                ElevatedButton(onPressed: () {}, child: const Text("20.10")),
                ElevatedButton(onPressed: () {}, child: const Text("22.30")),
              ],
            )
          ]),
        ),
        Container(
          width: 500,
          height: 150,
          child: Column(children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Image.asset("assets/image/cinema_cgv.jpeg"),
                Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    const Text(
                      "Transmart CGV",
                      style: TextStyle(
                          color: Colors.white,
                          fontSize: 20,
                          fontWeight: FontWeight.bold),
                    ),
                    const Text(
                      "TRANSMART MALL 3ND FLOOR",
                      style: TextStyle(color: Colors.white),
                    ),
                    const Text(
                      "2.2 KM",
                      style: TextStyle(color: Colors.white),
                    ),
                    const Text(
                      "2D",
                      style: TextStyle(color: Colors.white),
                    ),
                  ],
                ),
                const Text(
                  "IDR 45.000",
                  style: TextStyle(color: Colors.white),
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(onPressed: () {}, child: const Text("13.30")),
                ElevatedButton(onPressed: () {}, child: const Text("15.30")),
                ElevatedButton(onPressed: () {}, child: const Text("20.10")),
                ElevatedButton(onPressed: () {}, child: const Text("22.30")),
              ],
            )
          ]),
        ),
      ]),
    );
  }
}
