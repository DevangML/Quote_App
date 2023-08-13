import 'package:flutter/material.dart';
import 'package:quotes_app/quote.dart';

class QuoteCard extends StatelessWidget {
  const QuoteCard({Key? key, required this.quote, this.delete})
      : super(key: key);

  final Quote quote;
  final void Function()? delete;

  @override
  Widget build(BuildContext context) {
    return Card(
        margin: EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0.0),
        child: Padding(
          padding: const EdgeInsets.all(12.0),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.stretch, children: [
            Text(
              quote.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey.shade600),
            ),
            SizedBox(height: 6.0),
            Text(quote.author,
                style: TextStyle(fontSize: 14.0, color: Colors.grey.shade800)),
            SizedBox(height: 8.0),
            ElevatedButton.icon(
                onPressed: delete,
                icon: Icon(Icons.delete),
                label: Text('Delete Quote')),
          ]),
        ));
  }
}
