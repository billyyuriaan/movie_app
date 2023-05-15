import 'package:flutter/material.dart';

const natural400Color = Color.fromRGBO(177, 178, 178, 1);
const naturalWhiteColor = Color.fromRGBO(252, 252, 252, 1);
const natural700Color = Color.fromRGBO(87, 89, 90, 1);
const natural900Color = Color.fromRGBO(31, 34, 35, 1);
const primaryB500color = Color.fromRGBO(101, 126, 255, 1);
const appBarText = LinearGradient(colors: [
  Color.fromRGBO(163, 238, 255, 1),
  Color.fromRGBO(93, 213, 239, 1),
]);
const yellowSoft = Color.fromRGBO(233, 255, 101, 1);

class GradientText extends StatelessWidget {
  const GradientText(
    this.text, {
    required this.gradient,
    this.style,
  });

  final String text;
  final TextStyle? style;
  final Gradient gradient;

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      blendMode: BlendMode.srcIn,
      shaderCallback: (bounds) => gradient.createShader(
        Rect.fromLTWH(0, 0, bounds.width, bounds.height),
      ),
      child: Text(text, style: style),
    );
  }
}
