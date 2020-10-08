import 'package:flutter/material.dart';

main(List<String> args) {
  runApp(myapp());
}

class myapp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: Scaffold(
        appBar: AppBar(title: Text("Home")),
        body: Container(
          child: TextButton(onPressed: () {}, child: Text("data")),
        ),
      ),
    );
  }
}
