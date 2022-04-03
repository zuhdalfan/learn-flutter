
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';

import '../screen/main_screen.dart';
import 'input_decoration.dart';

class CreateAccountForm extends StatelessWidget {
  const CreateAccountForm({
    Key? key,
    required GlobalKey<FormState> formKey,
    required TextEditingController emailTextController,
    required TextEditingController passwordTextController,
  }) : _formKey = formKey, _emailTextController = emailTextController, _passwordTextController = passwordTextController, super(key: key);

  final GlobalKey<FormState> _formKey;
  final TextEditingController _emailTextController;
  final TextEditingController _passwordTextController;

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children : [
          Text(
            'Please enter a valid email and a password that is at least 6 characters.'),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              validator: ((value){
                return value!.isEmpty ? 'please add your email':null;
              }),
              controller: _emailTextController,
              decoration: buildInputDecoration(
                label: 'enter email',
                hintText: 'youremail@mail.com'),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(15.0),
            child: TextFormField(
              validator: ((value) {
                return value!.isEmpty ? 'enter password':null;
              }),
              controller: _passwordTextController,
              obscureText: true,
              decoration: buildInputDecoration(
                label: 'enter password', 
                hintText: ''),
            ),
          ),
          // ignore: prefer_const_constructors
          SizedBox(
            height: 20,
          ),
          TextButton(
            style: TextButton.styleFrom(
              primary: Colors.white,
              // ignore: prefer_const_constructors
              padding: EdgeInsets.all(15),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(4)
              ),
              backgroundColor: Colors.amber,
              // ignore: prefer_const_constructors
              textStyle: TextStyle(
                fontSize: 18,
              )
            ),
            onPressed: (){
              if (_formKey.currentState!.validate()){
                FirebaseAuth.instance
                .createUserWithEmailAndPassword(
                  email: _emailTextController.text, 
                  password: _passwordTextController.text)
                .then((value) {
                  // print(value.user?.email);
                  FirebaseAuth.instance
                    .signInWithEmailAndPassword(
                      email: _emailTextController.text, 
                      password: _passwordTextController.text)
                    .then((value) {
                      return Navigator.push(
                        context, 
                        MaterialPageRoute(builder: (context) => MainScreenPage(),));
                    });
                });
              }
            }, 
            child: Text('Create Account'))
        ]                        
      )
    );
  }
}

