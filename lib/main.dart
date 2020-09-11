import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

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
          QuoteCard(quote: quote)).toList()
        ),
      );
    
  }
}

