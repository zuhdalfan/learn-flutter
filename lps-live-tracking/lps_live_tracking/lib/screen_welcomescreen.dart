

import 'package:flutter/material.dart';
import 'package:lps_live_tracking/screen_homescreen.dart';
import 'package:splash_screen_view/ColorizeAnimatedText.dart';
import 'package:splash_screen_view/SplashScreenView.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SplashScreenView(
      duration: 10000,
      text: 'LPS Live Tracking',
      textType: TextType.ColorizeAnimationText,
      imageSrc: 'assets/images/logo-uwb.png',
      imageSize: 300,
      colors: [
        Colors.greenAccent,
        Color.fromARGB(255, 221, 151, 0)
      ],
      navigateRoute: HomeScreen());
  }
}
