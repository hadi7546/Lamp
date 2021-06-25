import 'package:flutter/material.dart';

class LampHangerRope extends StatelessWidget {
  final double screenWidth, screenHeight;
  final Color color;
  const LampHangerRope(
      {@required this.screenWidth, @required this.screenHeight, this.color});
  @override
  Widget build(BuildContext context) {
    return Positioned(
        left: screenWidth * 0.3 - 40,
        child: Container(
          color: color,
          width: 15,
          height: screenHeight * 0.15,
        ));
  }
}
