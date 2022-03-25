
import 'package:flutter/material.dart';

import 'input_decoration.dart';

class LoginForm extends StatelessWidget {
  const LoginForm({
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
              if (_formKey.currentState!.validate()){}
            }, 
            child: Text('Sign In'))
        ]                        
      )
    );
  }
}

