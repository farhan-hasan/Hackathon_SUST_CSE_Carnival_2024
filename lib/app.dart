import 'package:flutter/material.dart';
import 'package:learnloom/pages/category_page.dart';
import 'package:learnloom/pages/home_screen_page.dart';
import 'package:learnloom/pages/profile_page.dart';
import 'package:learnloom/pages/login_page.dart';
import 'package:learnloom/pages/register_page.dart';
import 'package:learnloom/pages/search_page.dart';

class App extends StatelessWidget {

  Color darkColor = Color(0xFF1C617A);

  Color grayColor = Color(0xFFE6E6E6);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: EntryScreen(),
      theme: ThemeData(
        inputDecorationTheme: InputDecorationTheme(
          // Customize the appearance of TextField
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: darkColor),
          ),
          enabledBorder: OutlineInputBorder(
            borderSide: BorderSide(color: grayColor),
          ),
          // Customize the cursor color
          //cursorColor: Colors.red,
        ),
      ),
    );
  }
}

class EntryScreen extends StatefulWidget {
  @override
  State<EntryScreen> createState() => _EntryScreenState();
}

class _EntryScreenState extends State<EntryScreen> {
  Color darkColor = Color(0xFF1C617A);
  Color grayColor = Color(0xFFE6E6E6);
  int _selectedIndex = 0;

  // List of screen widgets
  List<Widget> screens = [
    HomeScreen(),
    CategoryPage(),
    ProfilePage(),
    SearchPage(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: grayColor,
      appBar: AppBar(
        title: Text("LearnLoom"),
        backgroundColor: darkColor,
        foregroundColor: Colors.white,
        leading: Icon(Icons.person),
        actions: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: grayColor,
              ),
              width: 100,
              height: 30,
              child: Center(
                child: Text(
                  "Stream",
                  style:
                  TextStyle(color: darkColor, fontWeight: FontWeight.bold),
                ),
              ),
            ),
          )
        ],
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Color(0xFF1C617A),
        elevation: 5,
        currentIndex: _selectedIndex,
        selectedItemColor: Color(0xFF1C617A),
        unselectedItemColor: Colors.blue,
        onTap: (index) {
          setState(() {
            _selectedIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(
              icon: Icon(Icons.category), label: "Categories"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search"),
        ],
      ),
      body: screens[_selectedIndex],
    );
  }
}
