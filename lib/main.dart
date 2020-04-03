import "package:flutter/material.dart";
import "package:english_words/english_words.dart";

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = WordPair.random();
    return MaterialApp(
        theme: ThemeData(primaryColor: Colors.purple[600]),
        home: Scaffold(appBar: AppBar(title: Text("Wordpair Generator")),
        body: Center(
          child: Text(wordPair.asPascalCase)
        )
        )
        );
  }
}
