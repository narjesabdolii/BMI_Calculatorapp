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
        appBar: AppBar(
          centerTitle: true,
          elevation: 0,
          title: const Text('Log In'),
          backgroundColor: Colors.purple[300],

        ),
        body :  Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 30.0),
          child: Column(
            children:  <Widget>[
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Email-Address',
                  icon: Icon(Icons.email_rounded),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Password',
                  icon: Icon(Icons.password_rounded),
                ),
              ),
              const SizedBox(height: 20.0),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, '/bmi');
                  });
                },
                color: Colors.purple[400],
                child: const Text('log in',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],

          ),

        )
    );
  }
}
