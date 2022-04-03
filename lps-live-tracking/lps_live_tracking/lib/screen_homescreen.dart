
import 'dart:ffi';

import 'package:flutter/material.dart';
import 'package:lps_live_tracking/widget_fillboxanchor.dart';
import 'widget_inputdecoration.dart';


class HomeScreen extends StatefulWidget {
  const HomeScreen({ Key? key }) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final TextEditingController _anchor1 = TextEditingController();
  final TextEditingController _anchor2 = TextEditingController();
  final TextEditingController _anchor3 = TextEditingController();
  final TextEditingController _anchor4 = TextEditingController();

  static String anchorPos1 = ',';
  static String anchorPos2 = ',';
  static String anchorPos3 = ',';
  static String anchorPos4 = ',';

  static double anchorPos1x = 0;
  static double anchorPos1y = 0;
  static double anchorPos2x = 0;
  static double anchorPos2y = 0;
  static double anchorPos3x = 0;
  static double anchorPos3y = 0;
  static double anchorPos4x = 0;
  static double anchorPos4y = 0;

  static bool apply = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Expanded(
            flex: 1,
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                children: [
                  Expanded(child: Center(child: Text('Welcome to LPS Live Tracking Apps!'))),
                  Expanded(
                    child: Row(
                      children: [
                        Expanded(child: Text('')),
                        Expanded(
                          child: FillBoxAnchor(
                            anchor: _anchor1,
                            label: 'Anchor-1',
                          )),
                        Expanded(
                          child: FillBoxAnchor(
                            anchor: _anchor2,
                            label: 'Anchor-2',
                          )),
                        Expanded(
                          child: FillBoxAnchor(
                            anchor: _anchor3,
                            label: 'Anchor-3',
                          )),
                        Expanded(
                          child: FillBoxAnchor(
                            anchor: _anchor4,
                            label: 'Anchor-4',
                          )),
                        Expanded(
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: TextButton(
                              onPressed: (() {
                                setState(() {
                                  anchorPos1 = _anchor1.text;
                                  anchorPos2 = _anchor2.text;
                                  anchorPos3 = _anchor3.text;
                                  anchorPos4 = _anchor4.text;
                                });
                              }),
                              child: const Text(
                                'Apply',
                                )
                              ),
                          ),
                        ),
                        const Expanded(child: Text('')),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Container(
              color: Colors.greenAccent,
              child: Center(
                child: Row(
                  children: [
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: null,
                      )),
                    Expanded(
                      flex: 10,
                      child: Column(
                        children: [
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: null,
                            )),
                          Expanded(
                            flex: 10,
                            child: generateAnchorPos4(),
                            
                              
                            ),
                          Expanded(
                            flex: 1,
                            child: Container(
                              color: null,
                            )),
                        ],
                      ),
                    ),
                    Expanded(
                      flex: 1,
                      child: Container(
                        color: null,
                      ))
                  ],
                ),
              ),
            )
            
          )
          
        ],
      ),
    );
  }
Stack generateAnchorPos4() {

    

    if(anchorPos1 != '' && 
        anchorPos2 != '' && 
        anchorPos3 != '' && 
        anchorPos4 != ''){
          anchorPos1x = double.parse(anchorPos1.split(',')[0]);
          anchorPos1y = double.parse(anchorPos1.split(',')[1]);
          anchorPos2x = double.parse(anchorPos2.split(',')[0]);
          anchorPos2y = double.parse(anchorPos2.split(',')[1]);
          anchorPos3x = double.parse(anchorPos3.split(',')[0]);
          anchorPos3y = double.parse(anchorPos3.split(',')[1]);
          anchorPos4x = double.parse(anchorPos4.split(',')[0]);
          anchorPos4y = double.parse(anchorPos4.split(',')[1]); 
    }else{
      return Stack();  
    }
    return Stack(
              children: [
                GenerateAnchorPos(
                  xPos : anchorPos1x,
                  yPos : anchorPos1y),
                GenerateAnchorPos(
                  xPos : anchorPos2x,
                  yPos : anchorPos2y),
                GenerateAnchorPos(
                  xPos : anchorPos3x,
                  yPos : anchorPos3y),
                GenerateAnchorPos(
                  xPos : anchorPos4x,
                  yPos : anchorPos4y),
              ],
            );
  }
}

class GenerateAnchorPos extends StatelessWidget {
  const GenerateAnchorPos({
    Key? key, required this.xPos, required this.yPos,
  }) : super(key: key);

  final double xPos;
  final double yPos;

  @override
  Widget build(BuildContext context) {
    return Positioned(
      left: xPos,
      bottom: yPos,
      child: Container(
        height: 50,
        width: 50,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: Colors.white
        ),
      ));
  }
}


  