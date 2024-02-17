import 'package:flutter/material.dart';
import 'package:learnloom/pages/my_channel_page.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {

  TextEditingController _firstNameController = TextEditingController();
  TextEditingController _lastNameController = TextEditingController();
  TextEditingController _emailController = TextEditingController();
  TextEditingController _addressController = TextEditingController();
  TextEditingController _occupationController = TextEditingController();


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
            padding: EdgeInsets.all(20.0),
            child:
            Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
              Row(
                children: [
                  Expanded(
                    child: Text('First Name', style: TextStyle(fontSize: 15)),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text('Last Name', style: TextStyle(fontSize: 15)),
                  ),
                ],
              ),
              SizedBox(
                height: 05,
              ),
              Row(
                children: [
                  Expanded(
                    child: TextField(
                      controller: _firstNameController,
                      decoration: InputDecoration(
                          hintText: 'First Name', border: OutlineInputBorder()),
                    ),
                  ),
                  SizedBox(width: 10),
                  Expanded(
                    child: TextField(
                      controller: _lastNameController,
                      decoration: InputDecoration(
                          hintText: 'Last Name', border: OutlineInputBorder()),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 10),
              Text('Email', style: TextStyle(fontSize: 18)),
              TextField(
                controller: _emailController,
                decoration: InputDecoration(
                    hintText: 'Enter your email', border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              Text('Address', style: TextStyle(fontSize: 18)),
              TextField(
                controller: _addressController,
                decoration: InputDecoration(
                    hintText: 'Enter your address',
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              Text('Occupation', style: TextStyle(fontSize: 18)),
              TextField(
                controller: _occupationController,
                decoration: InputDecoration(
                    hintText: 'Enter your occupation',
                    border: OutlineInputBorder()),
              ),
              SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                    backgroundColor: Color(0xFF1C617A),
                    foregroundColor: Colors.white),
                onPressed: () {
                  // Save profile
                },
                child: Text('Save'),
              ),
              SizedBox(height: 150),
              SizedBox(
                  width: double.infinity,
                  height: 50,
                  child: ElevatedButton(
                      onPressed: () {
                        Navigator.push(context, MaterialPageRoute(builder: (context) => MyChannelPage()));
                      },
                      child: Text(
                        "My Channel",
                        style: TextStyle(color: Colors.white),
                      ),
                      style: ElevatedButton.styleFrom(
                          backgroundColor: Color(0xFF1C617A))))
            ])),
      ),
    );
  }
}
