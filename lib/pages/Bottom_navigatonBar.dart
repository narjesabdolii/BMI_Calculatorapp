import 'package:flutter/material.dart';

class BottomNavigate extends StatelessWidget {
  const BottomNavigate({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
         title: const Text('BMI Calculator'),
         centerTitle: true,
         elevation: 0,
         backgroundColor: Colors.purple[300],
       ),
      bottomNavigationBar: BottomNavigationBar(
        items: const [
          BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: 'Home',
          ),
          BottomNavigationBarItem(
              icon: Icon(Icons.list_alt_outlined),
            label: 'BMI List',
          ),
      ],
      ),
    );
  }
}


