import 'package:flutter/material.dart';
import 'package:my_app/romot.dart';

main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'myapp',
      theme: ThemeData(
        brightness: Brightness.dark,
        accentColor: Colors.blueAccent,
        primaryColor: Colors.deepOrangeAccent,
        textSelectionColor: Colors.amberAccent,
      ),
      home: home_page(),
    );
  }
}

class home_page extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          'home page',
          style: TextStyle(
              fontSize: 25,
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.bold),
        ),
      ),
      drawer: Drawer(
        child: Container(
          child: ListView(
            children: [
              ListTile(
                leading: Icon(
                  Icons.access_alarm,
                  size: 30,
                ),
                title: Text(
                  'Alarm',
                  style: TextStyle(fontSize: 25),
                ),
                onTap: () {},
              )
            ],
          ),
        ),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        color: Colors.amber,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            RaisedButton(
              onPressed: () {
                Navigator.push(
                    context, MaterialPageRoute(builder: (context) => romot()));
              },
              child: Text(
                '170 Reviews',
                style: TextStyle(
                  color: Colors.white,
                  fontWeight: FontWeight.w800,
                  fontFamily: 'Roboto',
                  letterSpacing: 0.5,
                  fontSize: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
