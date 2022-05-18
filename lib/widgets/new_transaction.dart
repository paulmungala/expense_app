import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {

  
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction({Key key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Card(
            child: Container(
              padding: EdgeInsets.all(10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                      labelText: 'Title',
                    ),
                    controller: titleController,
                    // onChanged: (value) {
                    //   titleInput = value;
                    // },
                  ),
                  TextField(
                      decoration: InputDecoration(
                        labelText: 'Amount',
                      ),
                      controller: amountController,
                      // onChanged: (value) {
                      //   amountInput = value;
                      // }),
                  ),
                  FlatButton(
                    child: Text('Add Transaction'),
                    textColor: Colors.blue,
                    onPressed: () { },
                  )
                ],
              ),
            ),
          );
  }
}