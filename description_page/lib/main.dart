import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
    home: Home(),
    debugShowCheckedModeBanner: false,
  ));
}

class Home extends StatefulWidget {
  @override
  Homeing createState() {
    return Homeing();
  }
}

class Homeing extends State {
  int count = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(
        title: Text("description"),
        centerTitle: true,
        backgroundColor: Colors.grey[850],
        elevation: 0,
      ),
      body: Padding(
        padding: EdgeInsets.fromLTRB(30, 20, 30, 10),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Center(
            child: CircleAvatar(
              backgroundImage: AssetImage('images/photo-3.jpg'),
              radius: 30,
            ),
          ),
          Divider(
            color: Colors.grey[600],
            height: 40,
          ),
          Text("NAME",
              style: TextStyle(
                letterSpacing: 2,
                color: Colors.grey[350],
              )),
          SizedBox(
            height: 2,
          ),
          Text("Shang-chi",
              style: TextStyle(
                color: Colors.amber[400],
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
          SizedBox(
            height: 18,
          ),
          Text("USERNAME",
              style: TextStyle(
                letterSpacing: 2,
                color: Colors.grey[350],
              )),
          SizedBox(
            height: 2,
          ),
          Text("Mr.boss",
              style: TextStyle(
                color: Colors.amber[400],
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
          Text("LEVEL",
              style: TextStyle(
                letterSpacing: 2,
                color: Colors.grey[350],
              )),
          SizedBox(
            height: 2,
          ),
          Text("$count",
              style: TextStyle(
                color: Colors.amber[400],
                fontWeight: FontWeight.bold,
                fontSize: 20,
              )),
          SizedBox(
            height: 18,
          ),
          Row(children: [
            Icon(
              Icons.mail,
              color: Colors.grey[350],
            ),
            Text(
              "shangchi@anywhere.com",
              style: TextStyle(color: Colors.grey[350]),
            ),
          ]),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {
            setState(() {
              count++;
            });
          },
          backgroundColor: Colors.amber[300],
          child: Icon(Icons.plus_one, color: Colors.white)),
    );
  }
}
