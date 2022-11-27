import 'package:flutter/material.dart';
import 'quote.dart';
import 'quoteCard.dart';

void main() {
  runApp(MaterialApp(
    home: Quotes(),
  ));
}

class Quotes extends StatefulWidget {
  const Quotes({Key? key}) : super(key: key);

  @override
  State<Quotes> createState() => _QuotesState();
}

class _QuotesState extends State<Quotes> {

  List<Quote> quotesList = [
    Quote('Its beauty in the struggle', 'J Cole'),
    Quote('You only sleep when you die', '2Chains'),
    Quote('No such thing as a life thats better than yours', 'Jermaine'),
    Quote('Go placidly amidst the noise and haste', 'Desiderata')
  ];



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        title: Text('My Quotes'),
        centerTitle: true,
        backgroundColor: Colors.blueGrey,
      ),
      body: Column(
        children: quotesList.map((quote) => QuoteCard(
            quote: quote,
            delete: () {
              setState(() {
                quotesList.remove(quote);
              });
            }
        )).toList(),
      ),
    );
  }
}