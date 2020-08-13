import 'package:flutter/foundation.dart';
class Transaction
{
 final String title;
 final double amount;
 final String id;
 final DateTime date;

Transaction({@required this.id,
@required this.amount,
@required this.title,
@required this.date});

}

