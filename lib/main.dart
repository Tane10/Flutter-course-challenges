import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.teal,
        body: SafeArea(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            CircleAvatar(
              radius: 50,
              backgroundColor: Colors.red,
              backgroundImage: AssetImage('images/joshFace.jpeg'),
            ),
            Text("Joshua Thomas",
                style: TextStyle(
                    fontSize: 40,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                    fontFamily: 'Pacifico')),
            Text(
              "Full Stack Developer",
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.teal[100],
                  fontFamily: "Lato-Bold",
                  letterSpacing: 1.5),
            ),
            SizedBox(
                height: 20,
                width: 150,
                child: Divider(
                  color: Colors.teal.shade100,
                )),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                  leading: Icon(Icons.phone, color: Colors.teal),
                  title: Text(
                    "+44 7931104349",
                    style: TextStyle(
                        color: Colors.teal.shade900,
                        fontFamily: "Lato-Bold",
                        fontSize: 20),
                  ),
                )),
            Card(
                color: Colors.white,
                margin: EdgeInsets.symmetric(vertical: 10.0, horizontal: 25.0),
                child: ListTile(
                    leading: Icon(Icons.email, color: Colors.teal),
                    title: Text(
                      "j.thomas.houlker@gmail.com",
                      style: TextStyle(
                          color: Colors.teal.shade900,
                          fontFamily: "Lato-Bold",
                          fontSize: 20),
                    )))
          ],
        )),
      ),
    );
  }
}
