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
                fontSize: 50.0,
                fontFamily: 'Dongle-Bold',
                color: Colors.white,
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(60.0, 60.0, 20.0, 10.0),
            child: Image.asset('assets/bmi-2.png',width: 130.0,height: 130.0,
            ),
            ),
          Container(
            margin: const EdgeInsets.fromLTRB(60.0, 30.0, 20.0, 10.0),
            child: TextButton(
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context,'/signup');
                });
              },
              child: const Text('Sign Up',
              style: TextStyle(
                fontSize: 40.0,
                fontFamily: 'Dongle-Bold',
                color: Colors.white,
              ),),



            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(60.0, 30.0, 20.0, 10.0),

            child: TextButton(
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, '/login');
                });
              },
              child: const Text('Log In',
              style: TextStyle(
                fontFamily: 'Dongle-Bold',
                fontSize: 40.0,
                color: Colors.white,
              ),),

            ),
          ),
        ],
      ),
    ),
    ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {  },
        backgroundColor: Colors.teal[300],
        child: const Icon(Icons.call),

      ),
    );
  }
}
