import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:app/src/utils/colors.dart';

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
      body: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              const Text("Hi Aliex", style: TextStyle(color: primaryB500color)),
            ],
          )),
    );
  }
}

class PersonilizedSecondScreen extends StatelessWidget {
  const PersonilizedSecondScreen({super.key});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}

class PersonilizedThirdScreen extends StatelessWidget {
  const PersonilizedThirdScreen({super.key});

  @override
  Widget build(BuildContext context) {
    throw UnimplementedError();
  }
}
