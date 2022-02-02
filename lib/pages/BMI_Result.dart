import 'package:flutter/material.dart';
class BMIResult extends StatefulWidget {
  const BMIResult({Key? key}) : super(key: key);

  @override
  _BMIResultState createState() => _BMIResultState();
}

class _BMIResultState extends State<BMIResult> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title : const Text('BMI Result'),
        centerTitle: true,
        backgroundColor: Colors.purple[300],
      ),
      body : Column (
        children: const <Widget>[
           Text('BMI Result'),
        ],
      ),
    );
  }
}
