import 'package:flutter/material.dart';
import 'package:learnloom/app.dart';

class MyChannelPage extends StatelessWidget {
  MyChannelPage({super.key});

  Color darkColor = Color(0xFF1C617A);

  Color grayColor = Color(0xFFE6E6E6);

  List<String> pastStreams = [
    'Stream 1',
    'Stream 2',
    'Stream 3',
    'Stream 4',
    'Stream 5',
    'Stream 6',
    'Stream 7',
    'Stream 8',
    'Stream 9',
    'Stream 10',
  ];

  int totalSubscribers = 0;
  int totalFollowers = 0;
  int totalViews = 0;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Channel"),
        backgroundColor: darkColor,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: EdgeInsets.all(20.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'Total Subscribers',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  totalSubscribers.toString(), // Display total subscribers
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Total Followers',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold)
            ),
            Row(
              children: [
                Text(
                  totalFollowers.toString(), // Display total followers
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Total Views',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            Row(
              children: [
                Text(
                  totalViews.toString(), // Display total views
                  style: TextStyle(fontSize: 16.0),
                ),
                SizedBox(width: 10),
              ],
            ),
            SizedBox(height: 20.0),
            Text(
              'Past Streams',
              style: TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
            ),
            SizedBox(height: 10.0),
            Container(
              height: 460.0,
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                ),
                itemCount: pastStreams.length,
                itemBuilder: (context, index) {
                  return Card(
                    color: Color(0xFF1C617A), // Set background color
                    child: ListTile(
                      title: Text(
                        pastStreams[index],
                        style: TextStyle(color: Colors.white),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
