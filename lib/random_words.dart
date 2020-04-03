import "package:flutter/material.dart";
import "package:english_words/english_words.dart";

class RandomWords extends StatefulWidget {
  @override
  RandomWordsState createState() => RandomWordsState();
}

class RandomWordsState extends State<RandomWords>{
  final _randomWordPairs = <WordPair>[]; // List
  final _savedWordPairs = Set<WordPair>(); // Set, allows only unique elements

  Widget _buildList() {
    return ListView.builder(
  padding: const EdgeInsets.all(16),
  itemBuilder: (context, item) {
    if(item.isOdd) return Divider();
    
    final index = item ~/ 2; //Amount of all elements minus number of dividers.
    
    if(index >= _randomWordPairs.length) {
      _randomWordPairs.addAll(generateWordPairs().take
      (10));
    }

  return _buildRow(_randomWordPairs[index]);
    },
  );
}

Widget _buildRow(WordPair pair) {

  final alreadySaved = _savedWordPairs.contains(pair);

  return ListTile(title: Text(pair.asPascalCase, 
  style: TextStyle(fontSize: 18)),
  trailing: Icon(alreadySaved ? Icons.favorite : Icons.favorite_border, color: alreadySaved ? Colors.red : null), // Icon logic.
  onTap: () {
    setState(() {
      if(alreadySaved) {
        _savedWordPairs.remove(pair);
      } else {
        _savedWordPairs.add(pair);
      }
    });
  },
  );
}


  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("WordPair Generator")),
      body: _buildList()); // Scaffold
  }
}