import 'package:flutter/material.dart';

class LampColorButton extends StatelessWidget {
  final Function onTap;
  final Function onLongPress;
  final Color color;
  final double width, height;

  const LampColorButton(
      {Key key,
      this.onTap,
      this.onLongPress,
      this.color,
      this.width,
      this.height})
      : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      onLongPress: onLongPress,
      child: AnimatedContainer(
        duration: Duration(milliseconds: 400),
        height: height,
        width: width,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: color,
        ),
      ),
    );
  }
}
