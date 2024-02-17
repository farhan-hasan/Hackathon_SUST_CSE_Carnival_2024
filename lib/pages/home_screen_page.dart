import 'package:flutter/material.dart';
import 'package:learnloom/pages/category_page.dart';
import 'package:learnloom/pages/stream_page.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Color darkColor = Color(0xFF1C617A);
  Color grayColor = Color(0xFFE6E6E6);


  int _selectedIndex = 0;
  List<Widget>screens = [
    HomeScreen(),
    CategoryPage(),
    CategoryPage(),
    CategoryPage(),
  ];

  var items = [
    {
      "imageUrl": "https://mir-s3-cdn-cf.behance.net/projects/404/864486161957923.Y3JvcCw5MjAsNzIwLDE4MCww.png",
      "streamTitle": "Live Stream 1"
    },
    {
      "imageUrl": "https://mir-s3-cdn-cf.behance.net/projects/404/864486161957923.Y3JvcCw5MjAsNzIwLDE4MCww.png",
      "streamTitle": "Live Stream 2"
    },
    {
      "imageUrl": "https://mir-s3-cdn-cf.behance.net/projects/404/864486161957923.Y3JvcCw5MjAsNzIwLDE4MCww.png",
      "streamTitle": "Live Stream 3"
    },
    {
      "imageUrl": "https://mir-s3-cdn-cf.behance.net/projects/404/864486161957923.Y3JvcCw5MjAsNzIwLDE4MCww.png",
      "streamTitle": "Live Stream 4"
    },
    {
      "imageUrl": "https://example.com/stream5_thumbnail.jpg",
      "streamTitle": "Live Stream 5"
    },
    {
      "imageUrl": "https://example.com/stream6_thumbnail.jpg",
      "streamTitle": "Live Stream 6"
    },
    {
      "imageUrl": "https://example.com/stream7_thumbnail.jpg",
      "streamTitle": "Live Stream 7"
    },
    {
      "imageUrl": "https://example.com/stream8_thumbnail.jpg",
      "streamTitle": "Live Stream 8"
    },
    {
      "imageUrl": "https://example.com/stream9_thumbnail.jpg",
      "streamTitle": "Live Stream 9"
    },
    {
      "imageUrl": "https://example.com/stream10_thumbnail.jpg",
      "streamTitle": "Live Stream 10"
    }
  ];

  @override
  Widget build(BuildContext context) {



    return Scaffold(
        backgroundColor: grayColor,
        body: Padding(
            padding: EdgeInsets.all(16),
            child: SingleChildScrollView(
              primary: false,
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "My Channels",
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 12,),
                    GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3,
                      crossAxisSpacing: 6),
                      shrinkWrap: true,
                      itemCount: 3,
                      itemBuilder: (context,index) {
                        return GestureDetector(
                          onTap: () {
                            Navigator.push(context, MaterialPageRoute(builder: (context) => StreamPage()));
                          },
                          child: GridTile(
                            child: Container(
                              color: grayColor,
                              child: Center(
                                child: Column(
                                  children: [
                                    Image.network(items[index]['imageUrl']!),
                                    Text(
                                      '${items[index]['streamTitle']}',
                                      style: TextStyle(color: darkColor),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        );
                      },
                    ),
                    SizedBox(height: 12,),
                    Text(
                      "Recommended",
                      style: TextStyle(fontSize: 24),
                    ),
                    SizedBox(height: 12,),
                    Card(
                      elevation: 2,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => StreamPage()));
                        },
                        child: Container(
                          height: 250,
                          color: grayColor,
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(child: Image.network(items[0]['imageUrl']!)),
                                Text(
                                  '${items[0]['streamTitle']}',
                                  style: TextStyle(color: darkColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12,),
                    Card(
                      elevation: 2,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => StreamPage()));
                        },
                        child: Container(
                          height: 250,
                          color: grayColor,
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(child: Image.network(items[0]['imageUrl']!)),
                                Text(
                                  '${items[0]['streamTitle']}',
                                  style: TextStyle(color: darkColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(height: 12,),
                    Card(
                      elevation: 2,
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(context, MaterialPageRoute(builder: (context) => StreamPage()));
                        },
                        child: Container(
                          height: 250,
                          color: grayColor,
                          child: Center(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Expanded(child: Image.network(items[0]['imageUrl']!)),
                                Text(
                                  '${items[0]['streamTitle']}',
                                  style: TextStyle(color: darkColor),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ),
                    )
                  ]
              ),
            ),
        )
    );
  }
}
