import 'package:flutter/material.dart';
import 'package:flutter_circle_color_picker/flutter_circle_color_picker.dart';

class LampColorPicker extends StatelessWidget {
  final Function onChanged;
  final Color initialColor;

  const LampColorPicker({Key key, this.onChanged, this.initialColor})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircleColorPicker(
        initialColor: initialColor,
        onChanged: onChanged,
        strokeWidth: 6,
        thumbSize: 30,
      ),
    );
  }
}
