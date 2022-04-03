// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import '../utils/util.dart';
import '../widget/body.dart';
import '../widget/button_row.dart';
import '../widget/contact_button.dart';

class Portofolio extends StatelessWidget {
  const Portofolio({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 10,
        backgroundColor: Colors.white,
        title: Row(
          // ignore: prefer_const_literals_to_create_immutables
          children : [
            Padding(
              padding: const EdgeInsets.only(top: 9, bottom: 9,right: 5),
              child: CircleAvatar(
                radius: 22,
                backgroundColor: Colors.white,
                foregroundImage: NetworkImage(
                  'https://pbs.twimg.com/profile_images/1224113805598150656/voKbw9B8_400x400.jpg'
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Zuhdi Alfan',
                style: TextStyle(
                  color: Colors.black45,
                  fontSize: 20,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.bold,
                ),
              ),
            )
          ]
        ),
        // ignore: prefer_const_literals_to_create_immutables
        actions: [
          ContactButton(
            buttonText: 'Contact You!!!',
            icon: Icon(Icons.send_rounded),
            onPressed: () {},
          ),
        ],
      ),
      body: Stack(
        // ignore: prefer_const_literals_to_create_immutables
        children: [
          Body(),
          Align(
            alignment: Alignment.bottomLeft,
            child: Padding(
              padding: const EdgeInsets.all(48.0),
              child: SizedBox(
                height: 59,
                child: ButtonRow()),
            ))
        ],
      ),

    );
  }
}





