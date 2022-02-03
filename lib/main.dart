import 'package:flutter/material.dart';
import 'pages/log_in.dart';
import 'pages/sign_up.dart';
import 'pages/Bmi_calculator.dart';
import 'pages/home.dart';




void main() =>
  runApp(MaterialApp(
    initialRoute: '/home',
    routes: {
      '/home': (context) => const Home(),
      '/signup' : (context) => const Signup(),
      '/login' : (context) => const Login(),
      '/bmi' : (context) => const BMI(),
    },
  ));





