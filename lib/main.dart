import 'package:flutter/material.dart';
import 'quotes.dart';

void main() => runApp(MaterialApp(
  
  home: QuoteList(),
),
);

class QuoteList extends StatefulWidget {
  const QuoteList({Key key}) : super(key: key);

  @override
  _QuoteListState createState() => _QuoteListState();
}

class _QuoteListState extends State<QuoteList> {

  
List<Quote> quotes = [
  Quote(text: "dogs on the way bow bow", author: "--gram"),
  Quote(text: "cats on the way meow meow", author: "--nigraham"),
  Quote(text: "rats on the way cheek cheek", author: "--whatson")
];

Widget quoteTemplate(quote) {
  return Card(
    margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
    child: Padding(
      padding: const EdgeInsets.all(12.0),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          Text(quote.text,
          style: TextStyle(
            fontSize: 18.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[800] 
          )
          ),
          Text(quote.author,
          style: TextStyle(
            fontSize: 14.0,
            fontWeight: FontWeight.bold,
            color: Colors.grey[500]
          )
          )
        
        ],),
    )
  );
}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text("Awesome Quotes"),
        centerTitle: true,
        backgroundColor: Colors.redAccent
      ),

      body: Column(
        children: quotes.map((quote) => 
          quoteTemplate(quote)).toList()
        ),
      );
    
  }
}