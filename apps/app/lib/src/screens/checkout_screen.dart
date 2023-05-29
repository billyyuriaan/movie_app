import 'package:flutter/material.dart';
import 'package:app/src/utils/colors.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0.0,
        title: Center(
          child: Text(
            'Checkout Detail',
          ),
        ),
      ),
      backgroundColor: natural900Color,
      body: SafeArea(
        child: Column(
          children: [
            Row(
              children: [
                Image.asset(
                  "assets/image/card_avatar.jpeg",
                ),
                const SizedBox(
                  width: 30,
                ),
                Column(
                  children: [
                    Image.asset(
                      "assets/image/xxi.png",
                      height: 30,
                      width: 76,
                    ),
                    const Text(
                      "AVATAR: THE WAY OF WATER",
                      style: TextStyle(color: Colors.white, fontSize: 16),
                    ),
                    const Text(
                      "PG-13",
                      style: TextStyle(color: Colors.white, fontSize: 12),
                    ),
                    const Text(
                      "Transmart | 2nd Floor,2D",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                    const Text(
                      "15.50 | Monday, 16 Jan 2023",
                      style: TextStyle(color: Colors.white, fontSize: 14),
                    ),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
      floatingActionButton: TextButton(
        style: TextButton.styleFrom(
            padding: const EdgeInsets.all(20),
            backgroundColor: Colors.blue,
            minimumSize: const Size(200, 40)),
        onPressed: () {
          Navigator.pushNamedAndRemoveUntil(context, "/", (route) => false);
        },
        child: const Text(
          "PROCEED CHECKOUT",
          style: TextStyle(color: Colors.white, fontSize: 14),
        ),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
    );
  }
}
