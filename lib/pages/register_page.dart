import 'package:flutter/material.dart';

import 'login_page.dart';

class RegisterPage extends StatelessWidget {
  RegisterPage({super.key});

  Color darkColor = Color(0xFF1C617A);

  Color grayColor = Color(0xFFE6E6E6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body : SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 30),
              Center(child: Text("Welcome", style: TextStyle(
                fontSize: 24,
                fontWeight: FontWeight.bold
              ),)),
              SizedBox(height: 15),
              Center(child: Text("Please provide the following details to register")),
              SizedBox(height: 15),
              Text("First Name"),
              TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                cursorColor: darkColor,
              ),
              SizedBox(height: 15),
              Text("Last Name"),
              TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  cursorColor: darkColor
              ),
              SizedBox(height: 15),
              Text("Email"),
              TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  cursorColor: darkColor
              ),
              SizedBox(height: 15),
              Text("Password"),
              TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  cursorColor: darkColor
              ),
              SizedBox(height: 15),
              Text("Confirm Password"),
              TextField(
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                  ),
                  cursorColor: darkColor
              ),
              SizedBox(height: 40),
              Align(
                alignment: Alignment(0, 0),
                child: SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(
                      onPressed: (){},
                      style: ElevatedButton.styleFrom(
                          backgroundColor: darkColor,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(10)
                          )
                      ),
                      child: Text('Register', style: TextStyle(
                          color: Colors.white
                      ),)
                  ),
                ),
              ),
              SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  TextButton(onPressed: (){
                    Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => LoginPage()));
                  },
                      child: Text('Sign In'))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
