import 'package:flutter/material.dart';
import 'User.dart';
import 'dart:ui';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body : Center(
           child : Container(
             alignment: const Alignment(-.2, 0),
           decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back-2.png'),
            fit: BoxFit.cover,
          ),
        ),
      child : Column (
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(60.0, 50.0, 20.0, 10.0),
            child: const Text(
              'BMI APP',
              style: TextStyle(
                fontSize: 40.0,
                fontFamily: 'Dongle-Bold',
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(60.0, 40.0, 20.0, 10.0),
            child: const CircleAvatar(
              radius: 85.0,
              backgroundColor: Colors.white,
              backgroundImage:AssetImage('assets/BMI-Calculator.png'),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(60.0, 40.0, 20.0, 10.0),
            child: FlatButton(
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context,'/signup');
                });
              },
              child: const Text('Sign Up',
              style: TextStyle(
                fontSize: 30.0,
                fontFamily: 'Dongle-Bold',
              ),),
              color: Colors.purple[400],


            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(60.0, 40.0, 20.0, 10.0),

            child: FlatButton(
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, '/login');
                });
              },
              child: const Text('Log In',
              style: TextStyle(
                fontFamily: 'Dongle-Bold',
                fontSize: 30.0,
              ),),
              color: Colors.purple[400],
            ),
          ),
        ],
      ),
    ),
    ),
    );
  }
}
