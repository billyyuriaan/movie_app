import 'package:flutter/material.dart';
import 'package:app/src/utils/colors.dart';

class CinemaBooked extends StatefulWidget {
  const CinemaBooked({super.key});

  @override
  State<CinemaBooked> createState() => _CinemaBookedState();
}

class _CinemaBookedState extends State<CinemaBooked> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0.0,
          title: const GradientText(
            "Mooviey",
            gradient: appBarText,
          ),
        ),
        backgroundColor: natural900Color,
        body: SafeArea(
            child: SingleChildScrollView(
          child: Column(
            children: [
              const Center(
                child: Text(
                  "Select Your Seats",
                  style: TextStyle(color: Colors.white, fontSize: 20),
                ),
              ),
              const SizedBox(
                height: 30,
              ),
              const Text(
                "Avatar: The Way Of Water",
                style: TextStyle(color: Colors.white),
              ),
              const Text(
                "Senin | 16 Jan 2023",
              ),
              const Text(
                style: TextStyle(color: Colors.white),
                "Transmart XXI | 2nd Floor, 2D",
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  FilledButton(onPressed: () {}, child: const Text("13.30")),
                  FilledButton(onPressed: () {}, child: const Text("15.50")),
                  FilledButton(onPressed: () {}, child: const Text("20.10"))
                ],
              ),
              const SizedBox(
                height: 50,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: const EdgeInsets.all(10),
                        color: Colors.grey,
                      ),
                      const Text(
                        "Booked",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: const EdgeInsets.all(10),
                        color: Colors.white,
                      ),
                      const Text(
                        "Available",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                  Row(
                    children: [
                      Container(
                        width: 30,
                        height: 30,
                        margin: const EdgeInsets.all(10),
                        color: Colors.blue,
                      ),
                      const Text(
                        "Selected",
                        style: TextStyle(color: Colors.white),
                      ),
                    ],
                  ),
                ],
              ),
              const SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("A2"),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("A2"),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("A2"),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("A2"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("A2"),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("A2"),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("A2"),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("A2"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("A2"),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("A2"),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("A2"),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("A2"),
                          ),
                        ],
                      ),
                    ],
                  ),
                  Column(
                    children: [
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("B2"),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("B2"),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("B2"),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("B2"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("B2"),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("B2"),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("B2"),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("B2"),
                          ),
                        ],
                      ),
                      Row(
                        children: [
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("B2"),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("B2"),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("B2"),
                          ),
                          Container(
                            width: 20,
                            height: 20,
                            decoration: const BoxDecoration(
                                color: Colors.white,
                                borderRadius:
                                    BorderRadius.all(Radius.circular(2))),
                            margin: const EdgeInsets.all(10),
                            child: const Text("B2"),
                          ),
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        )),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            showDialog<void>(
                context: context,
                builder: (context) {
                  return AlertDialog(
                    title: const Text("Confirmation"),
                    content: const Text(
                        "Apakah Anda Yakin Untuk Memesan Tiket Ini?"),
                    actions: [
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("Cancle")),
                      TextButton(
                          onPressed: () {
                            Navigator.of(context).pop();
                          },
                          child: const Text("Buy"))
                    ],
                  );
                });
          },
          label: const Text("Buy Ticket"),
        ));
  }
}
