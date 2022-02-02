import 'package:flutter/material.dart';
import 'User.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title : const Text('BMI Calculator',
          style: TextStyle(
            fontFamily: 'Dongle-Bold',
            fontSize: 35.0
          ) ,),
        centerTitle: true,
        backgroundColor: Colors.purple[300],
      ),
      body : Column (
        children: <Widget>[
          Container(
            margin: const EdgeInsets.fromLTRB(130.0, 50.0, 20.0, 10.0),
            child: const CircleAvatar(
              radius: 70.0,
              backgroundColor: Colors.white,
              backgroundImage:AssetImage('assets/BMI-Calculator.png'),
            ),
          ),
          Container(
            margin: const EdgeInsets.fromLTRB(130.0, 50.0, 20.0, 10.0),
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
            margin: const EdgeInsets.fromLTRB(130.0, 50.0, 20.0, 10.0),

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
    );
  }
}
