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

   late String username;
   late String password;
   late String _msg;
   int flag = 0;
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
   late List <User> users;

   void _addToList(String username,String password)
   {
       for(int i=0;i<users.length;i++)
         {
           if(users[i].username == username) {
             _msg = 'this username is already taken';
             flag = 0;
           }
           else
             {
               User user = User(username,password);
               users.add(user);
               flag = 1;
             }
         }
   }
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
                  'Sign Up Form',
                  style: TextStyle(
                    fontSize: 40.0,
                    fontFamily: 'Dongle-Bold',
                    color: Colors.white,
                  ),
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child :  TextField(
                  controller: emailController,
                  decoration: const InputDecoration(
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
                child: CheckboxListTile(
                    value: isChecked_female,
                    activeColor: Colors.teal[300],
                    title: const Text('female',
                      style: TextStyle(
                          fontFamily: 'Dongle-Bold',
                          fontSize: 30.0,
                          color: Colors.white,
                      ) ,),
                    onChanged: (bool? value)
                    {
                      setState(() {
                        isChecked_female = value! ;
                      });
                    }
                ),

              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child : CheckboxListTile(
                    value: isChecked_male,
                    activeColor: Colors.teal[300],
                    title: const Text('male',
                      style: TextStyle(
                          fontFamily: 'Dongle-Bold',
                          fontSize: 30.0,
                        color: Colors.white,
                      ) ,),
                    onChanged: (bool? value)
                    {
                      setState(() {
                        isChecked_male = value! ;
                      });
                    }
                ),
              ),
              Container(
                margin: const EdgeInsets.all(10.0),
                child:  ElevatedButton(
                  onPressed: () {
                    setState(() {
                      _addToList(emailController.text, passwordController.text);
                      if(flag == 1)
                        {
                          Navigator.pushNamed(context, '/login');
                        }
                      else
                        {
                          Text(_msg.toString());
                        }

                    });
                  },
                  style: ElevatedButton.styleFrom(
                    primary: Colors.teal[300],
                  ),
                  child: const Text('sign up',
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

