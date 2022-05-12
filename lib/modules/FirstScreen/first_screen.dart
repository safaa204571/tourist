import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_flutter/modules/Login/login_screen.dart';
import 'package:ui_flutter/modules/ManagerLogin/login_screen.dart';

class FirstScreen extends StatefulWidget {


  @override
  _FirstScreenState createState() => _FirstScreenState();
}

class _FirstScreenState extends State<FirstScreen> {
  @override
  void initState(){
    super.initState();
    Timer(Duration(seconds: 4), (){
      Navigator.of(context)
          .pushReplacement(MaterialPageRoute(builder: (_) => ManagerLoginScreen())
      );

    });
  }
  Widget build(BuildContext context) {
    return Scaffold(

      body:Center(
        child: Expanded(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                child: Container(
                  color: Colors.white,
                  child: Image.asset('assets/images/tourist.jpg',
                  fit: BoxFit.cover,),
                  height: double.infinity,
                ),
              ),

              // SizedBox(height: 20.0),
              // CircularProgressIndicator(
              //   valueColor: AlwaysStoppedAnimation<Color>(Colors.amber),
              //)
            ],
          ),
        ),
      )
    );
  }
}

