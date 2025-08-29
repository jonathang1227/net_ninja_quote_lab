import 'package:flutter/material.dart';
import 'quote.dart';
import 'quote_card.dart';

void main() => runApp(MaterialApp(home: QuoteList()));

class QuoteList extends StatefulWidget {
  //had to add to avoid warnings
  const QuoteList({super.key});
  @override
  //had to remove "_" because of "invalid use of a private type in a public API" warning
  QuoteListState createState() => QuoteListState();
}

class QuoteListState extends State<QuoteList> {
  List<Quote> quotes = [
    Quote(
      author: 'Oscar Wilde',
      text: 'Be yourself; everyone else is already taken',
    ),
    Quote(
      author: 'Oscar Wilde',
      text: 'I have nothing to declare except my genius',
    ),
    Quote(
      author: 'Oscar Wilde',
      text: 'The truth is rarely pure and never simple',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[200],
      appBar: AppBar(
        title: Text('Awesome Quotes'),
        centerTitle: true,
        backgroundColor: Colors.redAccent,
      ),
      body: Column(
        children: quotes.map((quote) {
          return QuoteCard(
            quote: quote,
            //passing setState function to quote_card
            increaseLike: () => setState(() {
              quote.likes++;
            }),
          );
        }).toList(),
      ),
    );
  }
}
