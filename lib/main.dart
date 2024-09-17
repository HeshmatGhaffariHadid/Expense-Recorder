import 'package:expence_palnner/transaction.dart';
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
  final List<Transaction> transaction = [
    Transaction(id: 't1', title: 'Banana', amount: 40, date: DateTime.now()),
    Transaction(
        id: 't2', title: 'Watermelon', amount: 120, date: DateTime.now()),
    Transaction(id: 't3', title: 'Apple', amount: 30, date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Expense App'),
      ),
      body: Column(
        // mainAxisAlignment: MainAxisAlignment.center,
        // crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
            child: Card(
              color: Colors.blueAccent,
              child: Text('Chart',
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                  )),
            ),
          ),
          Expanded(
            flex: 3,
            child: Column(
              children: transaction.map((tx) {
                return Card(
                  shadowColor: Colors.deepPurple.shade200,
                  elevation: 1.8,
                  child: Row(
                    children: [
                      Container(
                        margin:
                            EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                        padding: EdgeInsets.all(10),
                        decoration: BoxDecoration(
                          border: Border.all(color: Colors.purple, width: 2),
                        ),
                        child: Text(
                          tx.amount.toString(),
                          style: TextStyle(
                            fontSize: 20,
                            fontWeight: FontWeight.bold,
                            color: Colors.purple,
                          ),
                        ),
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            tx.title,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16 ,
                            ),
                          ),
                          Text(
                            tx.date.toString(),
                            style: TextStyle(
                              color: Colors.grey,
                            ),
                          ),
                        ],
                      )
                    ],
                  ),
                );
              }).toList(),
            ),
          ),
        ],
      ),
    );
  }
}
