

// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:mailto/mailto.dart';
import 'package:url_launcher/url_launcher.dart';

import 'contact_button.dart';

class Body extends StatelessWidget {
  Body({ Key key }) : super(key: key);

  final projectList = [
    {
      'title':'Building a Cat',
      'subtitle':'Great Client',
      'image':'https://picsum.photos/id/100/400/300'
    },
    {
      'title':'Flutter 2.0 Course',
      'subtitle':'A flutter app for nerds',
      'image':'https://picsum.photos/id/1014/400/300'
    },
    {
      'title':'Been There',
      'subtitle':'Save places you\'ve visited',
      'image':'https://picsum.photos/id/3/400/300'
    },
    {
      'title':'Bengo',
      'subtitle':'Flutter email app',
      'image':'https://picsum.photos/id/1025/400/300'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Expanded(
          flex: 1,
          child: Container(
            color: Colors.white,
            child: Column(
              children: [
                Expanded(
                  child: Stack(
                    alignment: Alignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Opacity(
                        opacity: 0.4,
                        child: Image(image: AssetImage('assets/images/headshot.png')),
                      ),
                      Align(
                        alignment: Alignment.topCenter,
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          // ignore: prefer_const_literals_to_create_immutables
                          children: [
                            Text(
                              "Software Developer.\nFlutter Expert!\n",
                              style: TextStyle(
                                fontSize: 40,
                                color: Colors.blueGrey,
                              ),
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Padding(
                                padding: const EdgeInsets.symmetric(horizontal: 75,vertical: 60),
                                child: ContactButton(
                                  buttonText: 'Drop me a line!',
                                  icon: Icon(Icons.mail),
                                  onPressed: (){},
                                ),
                              ),
                            )
                          ],
                        ),
                      ),
                      ],
                  ),
                )
              ],
            ),)),
        Expanded(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            // ignore: prefer_const_literals_to_create_immutables
            children: [
              SizedBox(
                height: 140,
              ),
              Padding(
                padding: const EdgeInsets.all(18.0),
                child: Text(
                  'My Projects', 
                  style: TextStyle(
                    color: Colors.black54,
                    fontWeight: FontWeight.w600,
                    fontSize: 23,
                ),),
              ),
              Expanded(
                child: ListView.builder(
                  itemCount: projectList.length,
                  itemBuilder: (context, index) {
                  return Container(
                    child: Column(
                      children: [
                        Card(
                          elevation: 3,
                          child: Column(
                            // ignore: prefer_const_literals_to_create_immutables
                            children: [
                              ListTile(
                                leading: Icon(Icons.work),
                                title: Text(projectList[index]['title']),
                                subtitle: Text(projectList[index]['subtitle']),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(24.0),
                                child: Container(
                                  alignment: Alignment.center,
                                  child: Image.network(projectList[index]['image']),
                                ),
                              )
                            ],
                          ),
                        )
                      ]),
                  );
                }),
              ),
            ],
          )
        ),
        SizedBox(
          width: 100,
        )
      ],
    );
  }
}
