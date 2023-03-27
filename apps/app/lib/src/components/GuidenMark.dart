import 'package:flutter/material.dart';

class GuidenMark extends StatefulWidget {
  const GuidenMark({super.key, required this.indexMark});

  final int indexMark;

  @override
  State<StatefulWidget> createState() => _GuidenMark();
}

class _GuidenMark extends State<GuidenMark> {
  // ignore: prefer_final_fields
  static List<Widget> _orderMark = [
    const DefaultMark(),
    const FirstMark(),
    const SecondMark(),
    const ThirdMark()
  ];

  @override
  Widget build(BuildContext context) {
    return _orderMark.elementAt(widget.indexMark);
  }
}

class DefaultMark extends StatelessWidget {
  const DefaultMark({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // ignore: avoid_unnecessary_containers
        Container(
          child: const CircleAvatar(
              child: Text(
            "1",
            style: TextStyle(color: Colors.black),
          )),
        ),
        Container(
          width: 120,
          child: const Divider(color: Colors.white),
        ),
        Container(
          child: const CircleAvatar(
              child: Text(
            "2",
            style: TextStyle(color: Colors.black),
          )),
        ),
        Container(
          width: 120,
          child: const Divider(color: Colors.white),
        ),
        Container(
          child: const CircleAvatar(
              child: Text(
            "3",
            style: TextStyle(color: Colors.black),
          )),
        )
      ],
    );
  }
}

class FirstMark extends StatelessWidget {
  const FirstMark({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // ignore: avoid_unnecessary_containers
        Container(
          child: const CircleAvatar(
              child: Icon(
            Icons.check,
            color: Colors.black,
          )),
        ),
        Container(
          width: 120,
          child: const Divider(color: Colors.white),
        ),
        Container(
          child: const CircleAvatar(
              child: Text(
            "2",
            style: TextStyle(color: Colors.black),
          )),
        ),
        Container(
          width: 120,
          child: const Divider(color: Colors.white),
        ),
        Container(
          child: const CircleAvatar(
              child: Text(
            "3",
            style: TextStyle(color: Colors.black),
          )),
        )
      ],
    );
  }
}

class SecondMark extends StatelessWidget {
  const SecondMark({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // ignore: avoid_unnecessary_containers
        Container(
          child: const CircleAvatar(
              child: Icon(
            Icons.check,
            color: Colors.black,
          )),
        ),
        Container(
          width: 120,
          child: const Divider(color: Colors.white),
        ),
        Container(
          child: const CircleAvatar(
              child: Icon(
            Icons.check,
            color: Colors.black,
          )),
        ),
        Container(
          width: 120,
          child: const Divider(color: Colors.white),
        ),
        Container(
          child: const CircleAvatar(
              child: Text(
            "3",
            style: TextStyle(color: Colors.black),
          )),
        )
      ],
    );
  }
}

class ThirdMark extends StatelessWidget {
  const ThirdMark({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        // ignore: avoid_unnecessary_containers
        Container(
          child: const CircleAvatar(
              child: Icon(
            Icons.check,
            color: Colors.black,
          )),
        ),
        Container(
          width: 120,
          child: const Divider(color: Colors.white),
        ),
        Container(
          child: const CircleAvatar(
              child: Icon(
            Icons.check,
            color: Colors.black,
          )),
        ),
        Container(
          width: 120,
          child: const Divider(color: Colors.white),
        ),
        Container(
          child: const CircleAvatar(
              child: Icon(
            Icons.check,
            color: Colors.black,
          )),
        )
      ],
    );
  }
}
