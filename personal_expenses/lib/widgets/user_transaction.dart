import 'package:flutter/material.dart';
import 'package:personal_expenses/models/transaction.dart';
import 'package:personal_expenses/widgets/new_transaction.dart';
import 'package:personal_expenses/widgets/transaction_list.dart';

class UserTransaction extends StatefulWidget {
  @override
  _UserTransactionState createState() => _UserTransactionState();
}

class _UserTransactionState extends State<UserTransaction> {
  final List<Transaction> _userTransaction = [
    Transaction(id: "t1", amount: 69.99, title: "Shoes", date: DateTime.now()),
    Transaction(
        id: "t2", amount: 69.99, title: "Groceries", date: DateTime.now())
  ];

  void _addNewTransaction(String txtitle, double txAmount) {
    final newTx = Transaction(
        id: DateTime.now().toString(),
        amount: txAmount,
        title: txtitle,
        date: DateTime.now());
    
    setState(() {
      _userTransaction.add(newTx);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        NewTransaction(_addNewTransaction),
        TransactionList(_userTransaction),
      ],
    );
  }
}
