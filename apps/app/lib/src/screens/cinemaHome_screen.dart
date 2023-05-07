import 'package:flutter/material.dart';
import 'package:app/src/utils/colors.dart';

class CinemaHome extends StatefulWidget {
  const CinemaHome({super.key});

  @override
  State<CinemaHome> createState() => _CinemaHomeState();
}

class _CinemaHomeState extends State<CinemaHome> {
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
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {},
                    child:
                        Row(children: [Icon(Icons.swap_calls), Text("data")]),
                  ),
                  InkWell(
                    child: const Icon(Icons.notifications_none),
                    onTap: () {},
                  )
                ],
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.fromLTRB(30, 10, 30, 0),
            child: Center(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [Icon(Icons.map_outlined), Text("Jakarta")],
                  ),
                  IconButton(onPressed: () => {}, icon: Icon(Icons.search))
                ],
              ),
            ),
          ),
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [Image.asset("assets/image/box.jpeg")],
            ),
          )
        ],
      )),
    );
  }
}
