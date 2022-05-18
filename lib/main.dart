// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';

import 'transaction.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter App',
      home: MyHomePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(
        id: 't1', 
        title: 'New Shoes', 
        amount: 4500.90, 
        date: DateTime.now()),
        Transaction(
        id: 't2', 
        title: 'New Hoodie', 
        amount: 1500.90, 
        date: DateTime.now()),
        Transaction(
        id: 't3', 
        title: 'Sherehe', 
        amount: 5500.90, 
        date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter App'),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          // ignore: sized_box_for_whitespace
          Container(
            width: double.infinity,
            child: Card(
              child: Text('Chart!'),
              color: Colors.cyan,
              elevation: 5,
            ),
          ),
          Column(
            children: transactions.map((tx) {
              return Card(
                child: Text(tx.title),
              );
            }).toList(),

          )
        ],
      ),
    );
  }
}
