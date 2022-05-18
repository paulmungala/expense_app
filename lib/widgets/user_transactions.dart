import 'package:flutter/material.dart';

import '../models/transaction.dart';
import 'new_transaction.dart';
import 'transaction_list.dart';

class UserTransaction extends StatefulWidget {
  const UserTransaction({ Key key }) : super(key: key);

  @override
  State<UserTransaction> createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
   final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 4500.90, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'New Hoodie', amount: 1500.90, date: DateTime.now()),
    // Transaction(
    //     id: 't3', title: 'Sherehe', amount: 5500.90, date: DateTime.now()),
  ];
  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
         NewTransaction(),
         const TransactionList(),
      ]
    );
  }
}