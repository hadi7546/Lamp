import 'package:flutter/material.dart';
import 'package:lamp/living_home/LampColor/lamp_color_button.dart';
import 'package:lamp/living_home/LampColor/lamp_color_picker.dart';
import 'package:lamp/living_home/lamp_hanger_rope.dart';
import 'package:lamp/living_home/lamp.dart';
import 'package:lamp/living_home/LEDBulb.dart';
import 'package:lamp/living_home/lamp_switch.dart';
import 'package:lamp/living_home/lamp_switch_rope.dart';
import 'package:lamp/living_home/room_name.dart';

final darkGray = const Color(0xFF232323);
final bulbOffColor = const Color(0xFFC1C1C1);
final colorButtonBorder = const Color(0xFFFFFFFF);
final animationDuration = const Duration(milliseconds: 500);

class LivingHomePage extends StatefulWidget {
  final roomName;

  const LivingHomePage({Key key, this.roomName}) : super(key: key);
  @override
  _LivingHomePageState createState() =>
      _LivingHomePageState(roomName: roomName);
}

class _LivingHomePageState extends State<LivingHomePage> {
  bool _isSwitchOn = false;
  bool _isColorOn = false;
  Color borderColorOff = Colors.white;
  Color border = Colors.white;
  Color borderColorOn = Colors.black;
  Color bulbOnColor = Color(0xFFFFE12C);
  int indexColor;
  double sizedBoxHeight = 15;
  List<Color> colors = [
    Color(0xFFFFE12C),
    Colors.blue,
    Colors.green,
    Colors.purple
  ];

  final roomName;

  _LivingHomePageState({this.roomName});
  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    double colorButtonSize = size.height / 14;
    return Scaffold(
      body: Stack(
        children: [
          LampHangerRope(
              screenHeight: size.height,
              screenWidth: size.width,
              color: darkGray),
          LEDBulb(
            screenHeight: size.height,
            screenWidth: size.width,
            onColor: _isColorOn ? colors[indexColor] : bulbOnColor,
            offColor: bulbOffColor,
            isSwitchOn: _isSwitchOn,
          ),
          Lamp(
            screenHeight: size.height,
            screenWidth: size.width,
            color: darkGray,
            isSwitchOn: _isSwitchOn,
            gradientColor: _isColorOn ? colors[indexColor] : bulbOnColor,
            animationDuration: animationDuration,
          ),
          LampSwitchRope(
            screenHeight: size.height,
            screenWidth: size.width,
            color: darkGray,
            isSwitchOn: _isSwitchOn,
            animationDuration: animationDuration,
          ),
          LampSwitch(
            screenHeight: size.height,
            screenWidth: size.width,
            toggleonColor: _isColorOn ? colors[indexColor] : bulbOnColor,
            toggleoffColor: bulbOffColor,
            color: darkGray,
            isSwitchOn: _isSwitchOn,
            animationDuration: animationDuration,
            onTap: () {
              setState(() {
                _isSwitchOn = !_isSwitchOn;
              });
            },
          ),
          LampSwitchRope(
            screenHeight: size.height,
            screenWidth: size.width,
            color: darkGray,
            isSwitchOn: _isSwitchOn,
            animationDuration: animationDuration,
          ),
          RoomName(
            screenHeight: size.height,
            screenWidth: size.width,
            color: darkGray,
            roomName: roomName,
          ),
          Padding(
              padding: const EdgeInsets.only(top: 10, right: 15),
              child: Align(
                alignment: Alignment.topRight,
                child: Column(
                  children: [
                    LampColorButton(
                      color: colors[0],
                      height: _isColorOn
                          ? (indexColor == 0
                              ? size.height / 12
                              : colorButtonSize)
                          : colorButtonSize,
                      width: _isColorOn
                          ? (indexColor == 0
                              ? size.height / 12
                              : colorButtonSize)
                          : colorButtonSize,
                      onTap: () {
                        setState(() {
                          _isColorOn = !_isColorOn;
                          indexColor = 0;
                        });
                      },
                      onLongPress: () {
                        setState(() {
                          colors = [
                            Color(0xFFFFE12C),
                            Colors.blue,
                            Colors.green,
                            Colors.purple
                          ];
                        });
                      },
                    ),
                    SizedBox(
                      height: sizedBoxHeight,
                    ),
                    LampColorButton(
                      color: colors[1],
                      height: _isColorOn
                          ? (indexColor == 1
                              ? size.height / 12
                              : colorButtonSize)
                          : colorButtonSize,
                      width: _isColorOn
                          ? (indexColor == 1
                              ? size.height / 12
                              : colorButtonSize)
                          : colorButtonSize,
                      onTap: () {
                        setState(() {
                          _isColorOn = !_isColorOn;
                          indexColor = 1;
                        });
                      },
                      onLongPress: () {
                        showDialog(
                            context: context,
                            builder: (context) => LampColorPicker(
                                  onChanged: (Color color) {
                                    setState(() {
                                      bulbOnColor = color;
                                      colors[1] = color;
                                    });
                                  },
                                  initialColor: colors[1],
                                ));
                      },
                    ),
                    SizedBox(
                      height: sizedBoxHeight,
                    ),
                    LampColorButton(
                      color: colors[2],
                      height: _isColorOn
                          ? (indexColor == 2
                              ? size.height / 12
                              : colorButtonSize)
                          : colorButtonSize,
                      width: _isColorOn
                          ? (indexColor == 2
                              ? size.height / 12
                              : colorButtonSize)
                          : colorButtonSize,
                      onTap: () {
                        setState(() {
                          _isColorOn = !_isColorOn;
                          indexColor = 2;
                        });
                      },
                      onLongPress: () {
                        showDialog(
                            context: context,
                            builder: (context) => LampColorPicker(
                                  onChanged: (Color color) {
                                    setState(() {
                                      bulbOnColor = color;
                                      colors[2] = color;
                                    });
                                  },
                                  initialColor: colors[2],
                                ));
                      },
                    ),
                    SizedBox(
                      height: sizedBoxHeight,
                    ),
                    LampColorButton(
                      color: colors[3],
                      height: _isColorOn
                          ? (indexColor == 3
                              ? size.height / 12
                              : colorButtonSize)
                          : colorButtonSize,
                      width: _isColorOn
                          ? (indexColor == 3
                              ? size.height / 12
                              : colorButtonSize)
                          : colorButtonSize,
                      onTap: () {
                        setState(() {
                          _isColorOn = !_isColorOn;
                          indexColor = 3;
                        });
                      },
                      onLongPress: () {
                        showDialog(
                            context: context,
                            builder: (context) => LampColorPicker(
                                  onChanged: (Color color) {
                                    setState(() {
                                      bulbOnColor = color;
                                      colors[3] = color;
                                    });
                                  },
                                  initialColor: colors[3],
                                ));
                      },
                    ),
                    SizedBox(
                      height: sizedBoxHeight,
                    ),
                  ],
                ),
              ))
        ],
      ),
    );
  }
}
