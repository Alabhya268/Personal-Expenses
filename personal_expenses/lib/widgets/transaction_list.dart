import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:personal_expenses/models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;
  final Function deltx;

  TransactionList(this.transaction, this.deltx);

  @override
  Widget build(BuildContext context) {
    return transaction.isEmpty
        ? LayoutBuilder(builder: (ctx, constraints) {
            return Column(
              children: [
                Container(
                  child: Image.asset(
                    'assets/images/waiting.png',
                    fit: BoxFit.cover,
                  ),
                  height: constraints.maxHeight * 0.6,
                ),
                SizedBox(
                  height: 15,
                ),
                Text(
                  'No Transactions Added Yet!',
                ),
              ],
            );
          })
        : ListView.builder(
            itemBuilder: (ctx, index) {
              return Card(
                margin: EdgeInsets.all(5),
                elevation: 6,
                child: ListTile(
                  leading: CircleAvatar(
                    radius: 30,
                    child: Padding(
                      padding: EdgeInsets.all(6),
                      child: FittedBox(
                        child: Text(
                          '\$${transaction[index].amount}',
                        ),
                      ),
                    ),
                  ),
                  title: Text(
                    '${transaction[index].title}',
                    style: Theme.of(context).textTheme.title,
                  ),
                  subtitle: Text(
                    DateFormat.yMMMd().format(transaction[index].date),
                  ),
                  trailing: IconButton(
                    icon: Icon(Icons.delete),
                    onPressed: () => deltx(transaction[index].id),
                    color: Theme.of(context).errorColor,
                  ),
                ),
              );
            },
            itemCount: transaction.length,
          );
  }
}
