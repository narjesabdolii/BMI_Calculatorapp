import 'package:flutter/material.dart';
class BMI extends StatefulWidget {
  const BMI({Key? key}) : super(key: key);

  @override
  _BMIState createState() => _BMIState();
}

class _BMIState extends State<BMI> {
  final _heightController = TextEditingController();
  final _weightController = TextEditingController();
  double? _bmi;


  void _calculate() {
    final double? height = double.tryParse(_heightController.value.text);
    final double? weight = double.tryParse(_weightController.value.text);

    if (height == null || height <= 0 || weight == null || weight <= 0) {
      setState(() {
      });
      return;
    }

    setState(() {
      _bmi = weight / (height/100 * height/100);
    });
  }

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
               TextField(
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                controller: _weightController,
                decoration: const InputDecoration(
                  labelText: 'Weight in kg',
                  icon: Icon(Icons.blur_linear_outlined),
                ),
              ),
               TextField(
                keyboardType: const TextInputType.numberWithOptions(decimal: true),
                controller: _heightController,
                decoration: const InputDecoration(
                  labelText: 'height in cm',
                  icon: Icon(Icons.blur_linear_outlined),
                ),
              ),
              const SizedBox(height: 20.0),
              FlatButton(
               onPressed: ()
                  {
                    _calculate();
                    showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            content: Text( _bmi == null ? 'No Result' : _bmi!.toStringAsFixed(2),
                            ),
                          );
                        },
                    );
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
