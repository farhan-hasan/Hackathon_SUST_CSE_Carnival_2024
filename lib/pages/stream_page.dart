import 'package:flutter/material.dart';

class StreamPage extends StatefulWidget {
  const StreamPage({super.key});



  @override
  State<StreamPage> createState() => _StreamPageState();
}

class _StreamPageState extends State<StreamPage> {

  Color darkColor = Color(0xFF1C617A);
  Color grayColor = Color(0xFFE6E6E6);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xFFE6E6E6),
        appBar: AppBar(
          title: Text("Streamer Name"),
          backgroundColor: darkColor,
          foregroundColor: Colors.white,
        ),
        body: Padding(
          padding: const EdgeInsets.all(30.0),
          child: SingleChildScrollView(
            child: Column(
            
              children: [
                Container(
                  height: 270,
                  width: 480,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    color: Color(0xFF1C617A),
                  ),
                ),
                SizedBox(height: 10),
                Row(
                  children: [
                    SizedBox(
                      width: 8,
                    ),
                    Container(
                      height: 70,
                      width: 70,
                      decoration: BoxDecoration(
                          color: Color(0xFF1C617A),
                          borderRadius: BorderRadius.all(Radius.circular(40))
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    Column(
                      //mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text('Streamer Name',
                            style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.bold
                            )),
                        Row(
                            children: [
                              ElevatedButton(
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF0A3157),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      )
                                  ),
                                  child: Text('Follow', style: TextStyle(
                                      color: Colors.white
                                  ),)
                              ),
                              SizedBox(
                                width: 8,
                              ),
                              ElevatedButton(
                                  onPressed: (){},
                                  style: ElevatedButton.styleFrom(
                                      backgroundColor: Color(0xFF0A3157),
                                      shape: RoundedRectangleBorder(
                                          borderRadius: BorderRadius.circular(10)
                                      )
                                  ),
                                  child: Text('Subscribe', style: TextStyle(
                                      color: Colors.white
                                  ),),
            
                              ),
                            ]
                        )
                      ],
                    )
                  ],
                ),
                SizedBox(
                  height: 10,
                ),
                Text("Live Chat"),
                SizedBox(
                  height: 10,
                ),
                Container(
                  height: 200,
                  width: double.infinity,
                  child: Card(
                    color: Colors.white,
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Column(
                  children: [
                    TextField(
                      decoration: InputDecoration(
                        hintText: 'Chat live'
                      ),
                    ),
                    SizedBox(height: 10,),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF1C617A),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              )
                          ),
                          child: Center(child: Icon(Icons.send, color: Colors.white,),)
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 40,
                      width: double.infinity,
                      child: ElevatedButton(
                          onPressed: (){},
                          style: ElevatedButton.styleFrom(
                              backgroundColor: Color(0xFF1C617A),
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(20)
                              )
                          ),
                          child: Center(child: Icon(Icons.card_giftcard, color: Colors.white,),)
                      ),
                    ),
                  ],
                )
              ],
            ),
          ),
        )
    );
  }
}
