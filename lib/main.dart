import 'dart:io';

import 'package:flutter/material.dart';
import 'package:device_preview/device_preview.dart';
import 'package:sizer/sizer.dart';
import 'living_home/living_home_page.dart';
import 'package:flutter/services.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
  ]);
  if (Platform.isWindows || Platform.isLinux || Platform.isMacOS) {
    // DesktopWindow.setWindowSize(Size(400, 400));
    // DesktopWindow.setMinWindowSize(Size(400, 400));
    // DesktopWindow.setMaxWindowSize(Size(400, 400));
  }
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Widget splashScreen = SplashScreenView(
      imageSrc: "assets/icon/web_hi_res_512.png",
      home: LivingHomePage(
        roomName: "lamp app",
      ),
      duration: 4000,
      textType: TextType.TyperAnimatedText,
      text: "Lamp App",
      textStyle: TextStyle(
        fontSize: 30,
      ),
      backgroundColor: Colors.white,
    );
    return LayoutBuilder(builder: (context, constraints) {
      return OrientationBuilder(
        builder: (context, orientation) {
          SizerUtil().init(constraints, orientation);

          return MaterialApp(
              builder: DevicePreview.appBuilder,
              title: 'Lamp',
              debugShowCheckedModeBanner: false,
              theme: ThemeData(
                  primaryColor: Colors.blue,
                  scaffoldBackgroundColor: Colors.white),
              home: splashScreen);
        },
      );
    });
  }
}
