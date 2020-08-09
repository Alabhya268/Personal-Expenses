import 'package:flutter/material.dart';
import 'package:personal_expenses/widgets/user_transaction.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  final titleController = TextEditingController();
  final amountController = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text("My App"),
        ),
        body: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Container(
                width: double.infinity,
                child: Card(
                  elevation: 5,
                  color: Colors.blue,
                  child: Center(child: Text("CHART!")),
                ),
              ),
              UserTransaction()
            ],
          ),
        ),
      ),
    );
  }
}
