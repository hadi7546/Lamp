import 'package:flutter/material.dart';

class LampSwitch extends StatelessWidget {
  final Function onTap;
  final bool isSwitchOn;
  final screenWidth, screenHeight;
  final animationDuration;
  final Color toggleonColor, toggleoffColor, color;

  const LampSwitch(
      {Key key,
      this.onTap,
      this.isSwitchOn,
      this.screenWidth,
      this.screenHeight,
      this.animationDuration,
      this.toggleonColor,
      this.toggleoffColor,
      this.color})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Positioned(
      bottom: screenHeight * 0.23,
      width: 30,
      right: screenWidth * 0.5 - 15,
      child: GestureDetector(
        onTap: onTap,
        child: Stack(
          children: [
            AnimatedContainer(
              duration: animationDuration,
              width: 30,
              height: 70,
              decoration: BoxDecoration(
                color: isSwitchOn ? toggleonColor : toggleoffColor,
                borderRadius: BorderRadius.circular(15),
              ),
            ),
            AnimatedPositioned(
              duration: animationDuration,
              left: 0,
              right: 0,
              top: isSwitchOn ? 42 : 4,
              child: Container(
                decoration: BoxDecoration(color: color, shape: BoxShape.circle),
                height: 24,
                width: 24,
              ),
            )
          ],
        ),
      ),
    );
  }
}
