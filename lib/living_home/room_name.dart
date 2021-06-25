import 'package:flutter/material.dart';
import 'package:sizer/sizer.dart';

class RoomName extends StatelessWidget {
  final double screenWidth, screenHeight;
  final Color color;
  final String roomName;
  const RoomName(
      {Key key, this.screenWidth, this.screenHeight, this.color, this.roomName})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Positioned(
        bottom: screenHeight * 0.10,
        width: screenWidth,
        child: Center(
          child: Transform.rotate(
            angle: -1.58,
            child: Text(
              roomName.toUpperCase(),
              style:
                  TextStyle(fontWeight: FontWeight.w600, fontSize: (18.0.sp)),
            ),
          ),
        ));
  }
}
