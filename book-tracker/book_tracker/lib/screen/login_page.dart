
import 'package:flutter/material.dart';
import 'package:hexcolor/hexcolor.dart';

import '../widget/create_acount_form.dart';
import '../widget/login_form.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({ Key? key }) : super(key: key);

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  bool isCreateAccountClicked = false;

  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailTextController = TextEditingController();
  final TextEditingController _passwordTextController = TextEditingController();


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
              SizedBox( 
                height: 15,
              ),
              Text(
                'Sign In',
                style: Theme.of(context).textTheme.headline5,
              ),
              // ignore: prefer_const_constructors
              SizedBox( 
                height: 10,
              ),
              Column(
                children: [
                  SizedBox(
                    width: 300,
                    height: 300,
                    child: isCreateAccountClicked != true 
                    ? LoginForm(
                        formKey: _formKey, 
                        emailTextController: _emailTextController, 
                        passwordTextController: _passwordTextController)
                    : CreateAccountForm(
                        formKey: _formKey, 
                        emailTextController: _emailTextController, 
                        passwordTextController: _passwordTextController
                    )),
                  TextButton.icon(
                    icon: Icon(Icons.portrait_rounded), 
                    style: TextButton.styleFrom(
                      primary: HexColor('#fd5b28'),
                      // ignore: prefer_const_constructors
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

