

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

class ContactButton extends StatelessWidget {
  
  final String buttonText;
  final Widget icon;
  final Function onPressed;

  const ContactButton({Key key, this.buttonText, this.icon, this.onPressed}) : super(key: key);
  
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12.0),
      child: TextButton.icon(
        style: TextButton.styleFrom(
          // ignore: prefer_const_constructors
          textStyle: TextStyle(
                color: Colors.black12,
          ),
          backgroundColor: Colors.amberAccent,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(15),
          ),
        ),
        onPressed: onPressed(), 
        icon: Padding(
          padding: const EdgeInsets.all(2.0),
          child: icon,
        ), 
        label: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            "$buttonText", 
            style: TextStyle(color: Colors.black54),),
        ),),
    );
  }
}

