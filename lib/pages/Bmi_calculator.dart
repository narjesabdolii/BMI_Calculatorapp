import 'package:flutter/material.dart';
class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          centerTitle: true,
          elevation: 6,
          title: const Text('BMI Calculator'),
          backgroundColor: Colors.purple[300],

        ),
        body :  Padding(
          padding: const EdgeInsets.symmetric(vertical: 20.0,horizontal: 30.0),
          child: Column(
            children:  <Widget>[
              const TextField(
                decoration: InputDecoration(
                  labelText: 'Weight in kg',
                  icon: Icon(Icons.blur_linear_outlined),
                ),
              ),
              const TextField(
                decoration: InputDecoration(
                  labelText: 'height in cm',
                  icon: Icon(Icons.blur_linear_outlined),
                ),
              ),
              const SizedBox(height: 20.0),
              FlatButton(
                onPressed: () {
                  setState(() {
                    Navigator.pushNamed(context, '/result');
                  });
                },
                color: Colors.purple[400],
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const <Widget>[
                    Icon(Icons.trending_up_outlined),
                    Text('calculate',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                )

              )

            ],

          ),

        )
    );
  }
}
