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
        appBar: PreferredSize(
            child: Container(
              alignment: Alignment.center,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                    begin: Alignment.bottomLeft,
                    end: Alignment.topRight,
                    colors: [Colors.red, Colors.indigo]),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(icon: Icon(Icons.menu), onPressed: () {Drawer(child: ListView(
                    children: [
                      ListTile(
                        leading: IconButton(icon: Icon(Icons.home), onPressed: () {  },),
                      )
                    ],
                  ),)}),
                  IconButton(icon: Icon(Icons.alarm), onPressed: () {})
                ],
              ),
            ),
            preferredSize: Size.fromHeight(50)),
      ),
    );
  }
}
