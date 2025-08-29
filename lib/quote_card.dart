import 'package:flutter/material.dart';
import 'quote.dart';
import 'package:intl/intl.dart';

class QuoteCard extends StatelessWidget {
  final Quote quote;
  //Had to add a functon with no aruments that returns nothing to call back to parent
  final VoidCallback? increaseLike;
  //had to make a const to remove warnings for const and public
  const QuoteCard({super.key, required this.quote, this.increaseLike});

  @override
  Widget build(BuildContext context) {
    final dateStr = DateFormat('MMM d, yyyy').format(quote.createdAt);
    return Card(
      margin: const EdgeInsets.fromLTRB(16.0, 16.0, 16.0, 0),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: <Widget>[
            Text(
              quote.text,
              style: TextStyle(fontSize: 18.0, color: Colors.grey[600]),
            ),
            SizedBox(height: 6.0),
            Text(
              quote.author,
              style: TextStyle(fontSize: 14.0, color: Colors.grey[800]),
            ),
            //Date & Like button
            SizedBox(height: 6.0),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(dateStr),
                //Left to Right
                Spacer(),
                IconButton(
                  icon: const Icon(Icons.thumb_up),
                  //passed from main.dart to increase count and reset state
                  onPressed: increaseLike,
                  color: Colors.amber[500],
                ),
                Text(
                  '${quote.likes}',
                  style: TextStyle(color: Colors.grey[700]),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
