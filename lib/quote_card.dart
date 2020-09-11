import 'package:flutter/material.dart';
import 'quote.dart';

class QuoteCard extends StatelessWidget {
  /*const QuoteCard({
    Key key,
  }) : super(key: key);*/

  final Quote quote;
  final Function delete;
  QuoteCard({ this.quote , this.delete});

  @override
  Widget build(BuildContext context) {
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
            SizedBox(height: 6.0,),
            Text(quote.author,
            style: TextStyle(
              fontSize: 14.0,
              fontWeight: FontWeight.bold,
              color: Colors.grey[500]
            )
            ),
            SizedBox(height: 8.0),
            FlatButton.icon(
              onPressed: delete,
              label: Text('Delete Quote'),
              icon: Icon(Icons.delete)
            )
          ],),
      )
    );
  }
}