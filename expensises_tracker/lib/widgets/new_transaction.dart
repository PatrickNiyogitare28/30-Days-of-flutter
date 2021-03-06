import 'package:flutter/material.dart';

import './user_transaction.dart';

class NewTransaction extends StatelessWidget {
  final Function addTx;
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  NewTransaction(this.addTx);
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (val) {titleInput = val;},
              controller: titleController,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (val) {amountInput = val;},
              controller: amountController,
            ),
            FlatButton(
              child: Text('Add Transaction'),
              onPressed: () {
                // print('title:  '+titleInput+' amount: '+amountInput);
                // print('Title: '+titleController.text+" amount: "+amountController.text);
                addTx(
                    titleController.text, double.parse(amountController.text));
              },
              textColor: Colors.purple, 
            )
          ],
        ),
      ),
    );
  }
}
