import 'package:flutter/material.dart';
import 'transactionList.dart';
import 'newTransaction.dart';
import '../models/transaction.dart';

class UserTransactions extends StatefulWidget {
  @override
  _UserTransactionsState createState() => _UserTransactionsState();
}

class _UserTransactionsState extends State<UserTransactions> {
  final titleInputVal = TextEditingController();
  final amountInputVal = TextEditingController();

  final List<Transaction> _userTransactions = [
    Transaction(
        id: 't1', title: 'New Shoes', amount: 69.99, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Groceries', amount: 15.89, date: DateTime.now())
  ];

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: <Widget>[NewTransaction(), TransactionList(_userTransactions)],
    );
  }
}
