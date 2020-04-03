import "package:flutter/material.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[600]),
        home: Scaffold(appBar: AppBar(title: Text("Wordpair Generator")),
        body: Center(
          child: Text("Hey There")
        )
        )
        );
  }
}
