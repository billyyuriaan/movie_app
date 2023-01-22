import 'package:flutter/material.dart';
import 'package:app/src/utils/colors.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

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
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text(
                "Select Your Selection",
                style: TextStyle(color: natural400Color, fontSize: 28),
              ),
              const SizedBox(
                height: 20,
              ),
              const SizedBox(
                width: 207,
                child: Text(
                  "Don't worry you can switch the section whenever you want",
                  style: TextStyle(
                    color: natural700Color,
                    fontSize: 14,
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              const SizedBox(
                height: 40,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/image/notfound.png",
                          width: 163,
                          height: 141,
                        ),
                        const Text(
                          "Watch Cinema",
                          style:
                              TextStyle(color: natural400Color, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          width: 163,
                          height: 141,
                          child: Text(
                            "Watch your favorite film with your love most",
                            style:
                                TextStyle(color: natural700Color, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                  const SizedBox(
                    width: 20,
                  ),
                  InkWell(
                    onTap: () {},
                    child: Column(
                      children: [
                        Image.asset(
                          "assets/image/notfound.png",
                          width: 163,
                          height: 141,
                        ),
                        const Text(
                          "Watch Cinema",
                          style:
                              TextStyle(color: natural400Color, fontSize: 18),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        const SizedBox(
                          width: 163,
                          height: 141,
                          child: Text(
                            "Watch your favorite film with your love most",
                            style:
                                TextStyle(color: natural700Color, fontSize: 12),
                            textAlign: TextAlign.center,
                          ),
                        )
                      ],
                    ),
                  ),
                ],
              )
            ],
          )),
    );
  }
}
