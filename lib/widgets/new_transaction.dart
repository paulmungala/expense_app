// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

class NewTransaction extends StatefulWidget {
  final Function addTx;


  const NewTransaction(this.addTx, {Key key}) : super(key: key);

  @override
  State<NewTransaction> createState() => _NewTransactionState();
}

class _NewTransactionState extends State<NewTransaction> {
  final titleController = TextEditingController();

  final amountController = TextEditingController();

  void submitData() {
    final enteredTitle = titleController.text;
    final enteredAmount = double.parse(amountController.text);

    if (enteredTitle.isEmpty || enteredAmount<=0) {
      return; //addTx code will not be executed
    }

    widget.addTx(enteredTitle, enteredAmount);
    Navigator.of(context).pop();
  }

 

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
              controller: titleController,
              // onChanged: (value) {
              //   titleInput = value;
              // },
            ),
            TextField(
              decoration: const InputDecoration(
                labelText: 'Amount',
              ),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
              // onChanged: (value) {
              //   amountInput = value;
              // }),
            ),
            FlatButton(
              child: const Text('Add Transaction'),
              textColor: Colors.blue,
              onPressed: () {
                submitData();
              },
            )
          ],
        ),
      ),
    );
  }
}
