import 'package:expence_palnner/new_transaction.dart';
import 'package:expence_palnner/user_transactions.dart';
import 'package:expence_palnner/widgets/transaction_list.dart';
import 'package:flutter/material.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: HomePage(),
    );
  }
}

class HomePage extends StatelessWidget {

  // String? titleInput;
  // String? amountInput;

  final titleController = TextEditingController();
  final amountController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense App'),
        backgroundColor: Colors.purple,
      ),
      body: ListView(
        children:[ Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          // crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Card(
              color: Colors.purple,
              child: Container(
                width: double.infinity,
                child: Text(
                  'Chart',
                  style: TextStyle(
                    fontSize: 18,
                    color: Colors.white,
                  ),
                ),
              ),
            ),
            UserTransactions(),
          ],
        ),
    ],
      ),
    );
  }
}
