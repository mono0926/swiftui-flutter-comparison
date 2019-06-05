import 'package:flutter/material.dart';

class CircleImage extends StatelessWidget {
  const CircleImage();
  @override
  Widget build(BuildContext context) {
    return Container(
      child: ClipOval(
        child: Image.asset('assets/turtlerock.jpg'),
      ),
      decoration: BoxDecoration(
        border: Border.all(
          width: 4,
          color: Colors.white,
        ),
        borderRadius: BorderRadius.circular(1000),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.33),
            blurRadius: 10,
          ),
        ],
      ),
    );
  }
}
