import 'package:flutter/material.dart';
import 'package:my_app/pages/User.dart';
import 'package:my_app/pages/home.dart';

class Signup extends StatefulWidget {
  const Signup({Key? key}) : super(key: key);

  @override
  _SignupState createState() => _SignupState();
}

class _SignupState extends State<Signup> {
  bool isChecked_male = false;
  bool isChecked_female = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        elevation: 0,
        title: const Text('Sign Up'),
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
            CheckboxListTile(
                value: isChecked_female,
                activeColor: Colors.purple[300],
                title: const Text('female'),
                onChanged: (bool? value)
                {
                  setState(() {
                    isChecked_female = value! ;
                  });
                }
            ),
            CheckboxListTile(
                value: isChecked_male,
                activeColor: Colors.purple[300],
                title: const Text('male'),
                onChanged: (bool? value)
                {
                  setState(() {
                    isChecked_male = value! ;
                  });
                }
            ),
            RaisedButton(
              onPressed: () {
                setState(() {
                  Navigator.pushNamed(context, '/login');

                });
              },
              color: Colors.purple[400],
              child: const Text('sign up',
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

