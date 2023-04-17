import 'package:flutter/material.dart';
import 'package:app/src/utils/colors.dart';
import 'package:app/src/components/GuidenMark.dart';

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

class PersonilizedFirstScreen extends StatefulWidget {
  const PersonilizedFirstScreen({super.key});

  @override
  State<PersonilizedFirstScreen> createState() =>
      _PersonilizedFirstScreenState();
}

class _PersonilizedFirstScreenState extends State<PersonilizedFirstScreen> {
  final allList = <String>[
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

  final List<String> _chooseLike = [];

  @override
  void initState() {
    super.initState();
  }

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
            ),
            const Divider(
              color: Colors.transparent,
            ),
            const Center(
                child: Text(
              "Choose your favorite genres",
              style: TextStyle(color: Colors.white, fontSize: 20),
            )),
            const Center(
              child: Text(
                "Selectng your favorite genres will help us to personilize your feeds",
                style: TextStyle(color: natural700Color, fontSize: 12),
              ),
            ),
            const Divider(
              color: Colors.transparent,
            ),
            const Divider(
              color: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                  onPressed: () => {
                    setState(() => {
                          if (_chooseLike.contains(allList.elementAt(0)))
                            {_chooseLike.remove(allList.elementAt(0))}
                          else
                            {_chooseLike.add(allList.elementAt(0))}
                        })
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: _chooseLike.contains(allList.elementAt(0))
                        ? Colors.blue
                        : Colors.transparent,
                  ),
                  child: Text(allList.elementAt(0)),
                ),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(1))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(2))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(3))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(4))),
              ],
            ),
            const Divider(
              color: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(5))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(6))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(7))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(8))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(9))),
              ],
            ),
            const Divider(
              color: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(10))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(11))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(12))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(13))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(14))),
              ],
            ),
            const Divider(
              color: Colors.transparent,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(15))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(16))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(17))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(18))),
                const SizedBox(
                  width: 10,
                ),
                ElevatedButton(
                    onPressed: () => {}, child: Text(allList.elementAt(19))),
              ],
            ),
            const Divider(
              color: Colors.transparent,
            ),
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
              child: const Text("Done!"))
        ],
      ),
    );
  }
}
