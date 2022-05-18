import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  
 
  
  @override
  Widget build(BuildContext context) {
    return           Column(
            children: _userTransactions.map((tx) {
              return Card(
                  child: Row(children: <Widget>[
                Container(
                  margin: const EdgeInsets.symmetric(
                    vertical: 15,
                    horizontal: 15,
                  ),
                  decoration: BoxDecoration(
                    border: Border.all(
                      color: Colors.black,
                      width: 2,
                    ),
                  ),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                    'Ksh ${tx.amount}',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 16,
                      color: Colors.blue.shade200,
                    ),
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: <Widget>[
                    Text(
                      tx.title,
                      style: const TextStyle(
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(DateFormat.yMMMMd().format(tx.date),
                        style: const TextStyle(
                          color: Colors.grey,
                        ))
                  ],
                ),
              ]
              ));
            }).toList(),
          );
  }
}