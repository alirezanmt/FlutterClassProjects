import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
            backgroundColor: Colors.lime,
            body: SafeArea(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  CircleAvatar(
                    radius: 100,
                    // backgroundColor: Colors.green,
                    backgroundImage: AssetImage('images/prof.png'),
                  ),
                  Text(
                    'Alireza',
                    style: TextStyle(
                      fontFamily: "Dancing",
                      fontSize: 38,
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Text(
                    'Flutter Class',
                    style: TextStyle(
                      fontFamily: "Indie",
                      fontSize: 40,
                      color: Colors.white,
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.phone,
                          color: Colors.teal.shade900,
                        ),
                        SizedBox(width: 10,),
                        Text("+98-9376467343", style: TextStyle(
                          color: Colors.blueAccent.shade200,
                          fontFamily: "Dancing",
                          fontSize: 20,
                        ),)
                      ],
                    ),
                  ),
                  Container(
                    color: Colors.white,
                    margin: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
                    child: Row(
                      children: <Widget>[
                        Icon(
                          Icons.email,
                          color: Colors.teal.shade900,
                        ),
                        SizedBox(width: 10,),
                        Text("alireza.tehran2020@gmail.com", style: TextStyle(
                          color: Colors.blueAccent.shade200,
                          fontFamily: "Dancing",
                          fontSize: 20,
                        ),)
                      ],
                    ),
                  )
                ],
              ),
            )));
  }
}
