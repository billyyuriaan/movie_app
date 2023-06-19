import 'package:flutter/material.dart';
import 'package:app/src/utils/colors.dart';
import 'package:screenshot/screenshot.dart';
import 'package:path_provider/path_provider.dart';

class TicketScreen extends StatefulWidget {
  const TicketScreen({super.key});

  @override
  State<TicketScreen> createState() => _TicketScreenState();
}

class _TicketScreenState extends State<TicketScreen> {
  ScreenshotController _screenshotController = ScreenshotController();

  Future<String> get _localPath async {
    final directory = await getApplicationDocumentsDirectory();

    return directory.path;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Thanks For Ordering",
            style: TextStyle(color: Colors.white),
          ),
          backgroundColor: Colors.transparent,
          actions: [
            IconButton(onPressed: () {}, icon: const Icon(Icons.share)),
            IconButton(
                onPressed: () async {
                  final path = await _localPath;

                  _screenshotController.captureAndSave(path, fileName: "save");
                },
                icon: const Icon(Icons.download)),
          ],
        ),
        backgroundColor: natural900Color,
        body: SafeArea(
            child: Screenshot(
          controller: _screenshotController,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("assets/image/card_avatar.jpeg"),
              const Text(
                "AVATAR: THE WAY OF WATER",
                style: TextStyle(),
              ),
              const Text(
                "Transmart XXI",
                style: TextStyle(),
              ),
              const Text(
                "2nd Floor, 2D",
                style: TextStyle(),
              ),
              const Text(
                "Monday, 16 Jan 2023",
                style: TextStyle(),
              ),
              const Text(
                "15.50",
                style: TextStyle(),
              ),
            ],
          ),
        )),
        floatingActionButton: FloatingActionButton.extended(
          onPressed: () {
            Navigator.popAndPushNamed(context, "/cinemaHome");
          },
          label: const Text("Buy Ticket"),
        ));
  }
}
