import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage();
  @override
  Widget build(BuildContext context) {
    return Material(
      elevation: 10,
      shape: CircleBorder(),
      clipBehavior: Clip.hardEdge,
      child: Image.asset('assets/turtlerock.jpg'),
    );
  }
}
