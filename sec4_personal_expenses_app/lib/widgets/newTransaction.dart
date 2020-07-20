import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final titleInputVal = TextEditingController();
  final amountInputVal = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 5,
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: <Widget>[
            TextField(
              decoration: InputDecoration(labelText: 'Title'),
              // onChanged: (value) => titleInputVal = value,
              controller: titleInputVal,
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              // onChanged: (value) => amountInputVal = value,
              controller: amountInputVal,
            ),
            FlatButton(
              onPressed: () {
                print(titleInputVal.text);
              },
              child: Text('Add Transaction'),
              textColor: Colors.purple,
            )
          ],
        ),
      ),
    );
  }
}
