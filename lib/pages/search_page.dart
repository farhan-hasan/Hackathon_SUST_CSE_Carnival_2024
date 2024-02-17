import 'package:flutter/material.dart';

class SearchPage extends StatelessWidget {
  SearchPage({super.key});

  Color darkColor = Color(0xFF1C617A);

  Color grayColor = Color(0xFFE6E6E6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                ),
                cursorColor: darkColor,
              ),
              SizedBox(
                height: 30,
              ),
              Align(
                alignment: Alignment(0, 0),
                child: SizedBox(
                  height: 50,
                  width: 200,
                  child: ElevatedButton(onPressed: () {} , child: Text(
                    'Search',
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
            ],
          ),
        )
    );
  }
}
