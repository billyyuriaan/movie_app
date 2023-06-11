import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:app/src/utils/colors.dart';
import 'package:app/firebase_options.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:app/src/firebase/firebase_db.dart';

class Checkout extends StatefulWidget {
  const Checkout({super.key});

  @override
  State<Checkout> createState() => _CheckoutState();
}

class _CheckoutState extends State<Checkout> {
  @override
  Widget build(BuildContext context) {
    Future<void> firebaseInit() async {
      await Firebase.initializeApp(
          options: DefaultFirebaseOptions.currentPlatform);
    }

    @override
    void initState() {
      firebaseInit();
      super.initState();
    }

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
              mainAxisAlignment: MainAxisAlignment.center,
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
          showDialog<void>(
              context: context,
              builder: (context) {
                return AlertDialog(
                  title: const Text("Confirmation"),
                  content:
                      const Text("Apakah Anda Yakin Untuk Memesan Tiket Ini?"),
                  actions: [
                    TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: const Text("Cancle")),
                    TextButton(
                        onPressed: () {
                          final dataSent = <String, dynamic>{
                            "title": "Avatar: The Way Of Water",
                            "watch": Timestamp.fromDate(DateTime(2023)),
                            "created_at": Timestamp.fromDate(DateTime.now())
                          };

                          db.collection("order").add(dataSent).then((value) {});
                          Navigator.of(context).pop();
                          Navigator.pushNamedAndRemoveUntil(
                              context, "/ticket", (route) => false);
                        },
                        child: const Text("Buy"))
                  ],
                );
              });
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
