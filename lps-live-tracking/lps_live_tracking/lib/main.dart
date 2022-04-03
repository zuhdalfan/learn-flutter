import 'package:flutter/material.dart';
import 'package:lps_live_tracking/screen_welcomescreen.dart';


void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);


  @override
  Widget build(BuildContext context) {
    AssetImage assetLogoUwb = const AssetImage('assets/images/logo-uwb.png');
    // ignore: unused_local_variable
    Image logoUwb = Image(image: assetLogoUwb, width: 250,height: 250,);
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      // ignore: prefer_const_constructors
      home: WelcomeScreen()
    );
  }
}
