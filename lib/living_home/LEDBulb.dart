import 'package:flutter/material.dart';

class LEDBulb extends StatelessWidget {
  final double screenWidth, screenHeight;
  final Color color, onColor, offColor;
  final bool isSwitchOn;
  final Duration animationDuration = const Duration(milliseconds: 2000);

  const LEDBulb({
    Key key,
    @required this.screenWidth,
    @required this.screenHeight,
    this.color,
    @required this.onColor,
    @required this.offColor,
    @required this.isSwitchOn,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: screenHeight * 0.1 - 40,
      top: screenHeight * 0.29,
      child: AnimatedContainer(
        duration: animationDuration,
        width: screenWidth / 3,
        height: screenHeight / 5,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: isSwitchOn ? onColor : offColor,
        ),
      ),
    );
  }
}
