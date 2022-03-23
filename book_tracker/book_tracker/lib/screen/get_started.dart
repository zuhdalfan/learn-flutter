
// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

class GetStarted extends StatelessWidget {
  const GetStarted({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Material(
      child: CircleAvatar(
        backgroundColor: HexColor('#f5f6f8'),
        child: Column(
          // ignore: prefer_const_literals_to_create_immutables
          children: [
            // ignore: prefer_const_constructors
            Spacer(),
            Text(
              'BookTracker', 
              style: Theme.of(context).textTheme.headline3
            ),
            Text(
              'Read. Change. Yourself',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black26, 
                fontSize: 29),
              ),
            SizedBox(height: 50,),
            TextButton.icon(
              style: TextButton.styleFrom(
                primary: Colors.white,
                backgroundColor: HexColor('#69639f'),
                textStyle: TextStyle(fontSize: 18),
              ),
              onPressed: (){
                Navigator.push(context, MaterialPageRoute(builder: (context) => LoginPage(),));
              }, 
              icon: Icon(Icons.login_rounded), 
              label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text('Sign in to get Started!'),
              )),
            Spacer(),
          ],
        ),
      ),
    );
  }
}

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isCreateAccountClicked = false;
  @override
  Widget build(BuildContext context) {
    return Material(
      child: Container(
        child: Column(
          children: [
            Expanded(
              flex: 2,
              child: Container(
                color: HexColor('#b9c2d1'),
              )),
              Text(
                'Sign In',
                style: Theme.of(context).textTheme.headline5,
              ),
              SizedBox(
                height: 10,
              ),
              Column(
                children: [
                  SizedBox(
                    width: 300,
                    height: 300,
                    child: Text(isCreateAccountClicked ? 'form goes here!':'Login form'),
                  ),





                  TextButton.icon(
                    icon: Icon(Icons.portrait_rounded), 
                    style: TextButton.styleFrom(
                      primary: HexColor('#fd5b28'),
                      textStyle: TextStyle(
                        fontSize: 18,
                        fontStyle: FontStyle.italic,
                      )
                    ),
                    onPressed: (){
                      setState(() {
                        if(!isCreateAccountClicked){
                          isCreateAccountClicked = true;
                        }else
                          isCreateAccountClicked = false;
                      });
                    }, 
                    label: Text(isCreateAccountClicked ? 'Already have an account?':'Create Account!'))
                ],
              ),
            Expanded(
              flex: 2,
              child: Container(
                color: HexColor('#b9c2d1'),
              ))
          ],
        ),
      ),
    );
  }
}