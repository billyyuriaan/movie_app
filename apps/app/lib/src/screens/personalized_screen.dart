import 'package:flutter/material.dart';
import 'package:app/src/utils/colors.dart';
import 'package:app/src/components/GuidenMark.dart';

const allList = <String>[
  "Comedy",
  "Thriller",
  "Action",
  "Horror",
  "Cartoon",
  "Sci-Fi",
  "Anime",
  "Western",
  "Biography",
  "Detective",
  "Family",
  "Adventure",
  "Romance",
  "Dark Fantasy",
  "History",
  "Asian",
  "European",
  "Crime",
  "Documentation",
  "Appocalyps"
];

class MovieChoises extends ChangeNotifier {
  var choices = <String>[];

  void toggleChoices(String name) {
    // ignore: iterable_contains_unrelated_type
    if (choices.contains(choices)) {
      choices.remove(name);
    } else {
      choices.add(name);
    }
  }
}

class PersonilizedFirstScreen extends StatelessWidget {
  const PersonilizedFirstScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const GradientText(
          "Mooviey",
          gradient: appBarText,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: natural900Color,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Center(
              child: const Text(
                "Hi Alex!",
                style: TextStyle(color: primaryB500color, fontSize: 32),
              ),
            ),
            const Divider(
              color: Colors.transparent,
            ),
            const GuidenMark(
              indexMark: 0,
            )
          ],
        ),
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/personalized#second");
              },
              child: const Text("Next"))
        ],
      ),
    );
  }
}

class PersonilizedSecondScreen extends StatelessWidget {
  const PersonilizedSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const GradientText(
          "Mooviey",
          gradient: appBarText,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: natural900Color,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Center(
              child: const Text(
                "Hi Alex!",
                style: TextStyle(color: primaryB500color, fontSize: 32),
              ),
            ),
            const Divider(
              color: Colors.transparent,
            ),
            const GuidenMark(
              indexMark: 1,
            )
          ],
        ),
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/personalized#third");
              },
              child: const Text("Next"))
        ],
      ),
    );
  }
}

class PersonilizedThirdScreen extends StatelessWidget {
  const PersonilizedThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const GradientText(
          "Mooviey",
          gradient: appBarText,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: natural900Color,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Center(
              child: const Text(
                "Hi Alex!",
                style: TextStyle(color: primaryB500color, fontSize: 32),
              ),
            ),
            const Divider(
              color: Colors.transparent,
            ),
            const GuidenMark(
              indexMark: 2,
            )
          ],
        ),
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamed(context, "/personalized#fourth");
              },
              child: const Text("Next"))
        ],
      ),
    );
  }
}

class PersonilizedFourthScreen extends StatelessWidget {
  const PersonilizedFourthScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const GradientText(
          "Mooviey",
          gradient: appBarText,
        ),
        backgroundColor: Colors.transparent,
        elevation: 0.0,
      ),
      backgroundColor: natural900Color,
      body: SafeArea(
          child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Center(
              child: const Text(
                "Hi Alex!",
                style: TextStyle(color: primaryB500color, fontSize: 32),
              ),
            ),
            const Divider(
              color: Colors.transparent,
            ),
            const GuidenMark(
              indexMark: 3,
            )
          ],
        ),
      )),
      floatingActionButton: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          ElevatedButton(
              onPressed: () {
                Navigator.pushNamedAndRemoveUntil(
                    context, "/home", (route) => false);
              },
              child: const Text("Next"))
        ],
      ),
    );
  }
}
