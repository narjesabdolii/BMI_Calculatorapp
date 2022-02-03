import 'package:flutter/material.dart';
class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : Container(
        alignment: const Alignment(-.2, 0),
        decoration: const BoxDecoration(
          image: DecorationImage(
            image: AssetImage('assets/back-2.png'),
            fit: BoxFit.cover,
          ),
        ),
        child: Column(
          children:  <Widget>[
            Container(
              margin: const EdgeInsets.all(20.0),
              child: const Text(
                'Log In Form',
                style: TextStyle(
                  fontSize: 40.0,
                  fontFamily: 'Dongle-Bold',
                  color: Colors.white,
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child : const TextField(
                decoration: InputDecoration(
                    labelText: 'Email-Address',
                    icon: Icon(Icons.email_rounded) ,
                    iconColor: Colors.teal
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child :const TextField(
                decoration: InputDecoration(
                    labelText: 'Password',
                    icon: Icon(Icons.password_rounded),
                    iconColor: Colors.teal
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.all(10.0),
              child:  ElevatedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, '/bmi');
                  });
                },
                style: ElevatedButton.styleFrom(
                  primary: Colors.teal[300],
                ),
                child: const Text('log in',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30.0,
                    fontFamily: 'Dongle-Bold',
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          setState(() {
            Navigator.pushNamed(context, '/home');
          });
        },
        backgroundColor: Colors.teal[300],
        child: const Icon(Icons.arrow_back_outlined),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
