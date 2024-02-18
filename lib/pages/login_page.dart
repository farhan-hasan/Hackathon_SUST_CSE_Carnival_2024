import 'package:flutter/material.dart';
import 'package:learnloom/app.dart';
import 'package:learnloom/pages/register_page.dart';

class LoginPage extends StatelessWidget {
  LoginPage({super.key});

  Color darkColor = Color(0xFF1C617A);

  Color grayColor = Color(0xFFE6E6E6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                height: 30,
              ),
              Center(child: Text("Login", style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold
              ),)),
              SizedBox(
                height: 50,
              ),
              Text(
                  'Email'),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                cursorColor: darkColor,
              ),
              Text(
                  'Password'),
              SizedBox(
                height: 10,
              ),
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                cursorColor: darkColor,
                obscureText: true,
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment(0, 0),
                child: SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(onPressed: () {
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => EntryScreen()));
                  } , child: Text(
                    'Login',
                    style: TextStyle(
                      color: Colors.white,
                    ),
                  ),style: ElevatedButton.styleFrom(
                    backgroundColor: darkColor,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10),

                    ),
                  ),
                  ),
                ) ,
              ),
              Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text('If you have no account?'),
                    TextButton(onPressed: (){
                      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => RegisterPage()));
                    }, child: Text(
                      'Register',
                    ))
                  ],
                ),
              )
            ],
          ),
        )
    );
  }
}
