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
  String? _msg;


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
      _msg = _bmi.toString();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body :  Container(
          alignment: const Alignment(-.2, 0),
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage('assets/back-blue.jpg'),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children:  <Widget>[
              Container(
                margin: const EdgeInsets.all(20.0),
                child: const Text(
                  'BMI Calculator',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Dongle-Bold',
                    color: Colors.white,
                  ),
                ),
              ),
               Container(
                 margin: const EdgeInsets.all(20.0),
                 child:  TextField(
                   keyboardType: const TextInputType.numberWithOptions(decimal: true),
                   controller: _weightController,
                   decoration: const InputDecoration(
                     labelText: 'Weight in kg',
                     icon: Icon(Icons.blur_linear_outlined),
                   ),
                 ),
               ),
               Container(
                 margin: const EdgeInsets.all(20.0),
                 child:TextField(
                   keyboardType: const TextInputType.numberWithOptions(decimal: true),
                   controller: _heightController,
                   decoration: const InputDecoration(
                     labelText: 'height in cm',
                     icon: Icon(Icons.blur_linear_outlined),
                   ),
                 ),
               ),
              const SizedBox(height: 20.0),
              Container(
                margin: const EdgeInsets.all(20.0),
                child:  ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    primary: Colors.orange[200],
                  ),
                    onPressed: ()
                    {
                      _calculate();
                      showDialog(
                        context: context,
                        builder: (context){
                          return AlertDialog(
                            content: Text( _bmi == null ? 'No Result' : _bmi!.toStringAsFixed(2),
                              style: const TextStyle(
                                  fontFamily: 'Dongle-Bold',
                                  fontSize: 35.0
                              ) ,
                            ),
                          );
                        },
                      );
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: const <Widget>[
                        Icon(Icons.trending_up_outlined,
                        color: Colors.black87,),
                        Text('calculate',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Dongle-Bold',
                            fontSize: 30.0,
                            color: Colors.black87,
                          ),
                        ),
                      ],
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
        backgroundColor: Colors.orange[200],
        child: const Icon(Icons.arrow_back_outlined,
        color: Colors.orange,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.startFloat,
    );
  }
}
