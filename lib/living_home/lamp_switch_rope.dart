import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class LampSwitchRope extends StatelessWidget {
  final double screenWidth, screenHeight;
  final Color color;
  final bool isSwitchOn;
  final Duration animationDuration;

  const LampSwitchRope(
      {Key key,
      this.screenWidth,
      this.screenHeight,
      this.color,
      this.isSwitchOn,
      this.animationDuration});

  @override
  Widget build(BuildContext context) {
    return AnimatedPositioned(
      duration: animationDuration,
      top: screenHeight * 0.4,
      bottom: screenHeight *
          (isSwitchOn
              ? 0.24
              : (SizerUtil.deviceType == DeviceType.Tablet ? 0.288 : 0.30)),
      width: 2,
      right: screenWidth * 0.5 - 1,
      child: Container(
        color: color,
      ),
    );
  }
}
