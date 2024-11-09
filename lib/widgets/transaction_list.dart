import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;
  TransactionList(this.transaction);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 300,
      child: transaction.isEmpty ? Column(
        children: [
          Text('No transactions added yet!',style: TextStyle(fontFamily: 'OpenSans',fontSize: 18,fontWeight: FontWeight.bold)),
          SizedBox(height: 10),
          Container(
            height: 200,
              child: Image.asset('assets/images/waiting.png',fit: BoxFit.cover)),
        ],
      ) : ListView.builder(itemBuilder: (ctx, index) {
        return Card(
          child: Row(
            children: [
              Container(
                margin:
                    const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                  border: Border.all(color: Theme.of(context).primaryColor, width: 2),
                ),
                child: Text(
                  '\$${transaction[index].amount.toStringAsFixed(2)}',
                  style: TextStyle(
                    fontSize: 20,
                    fontFamily: 'OpenSans',
                    fontWeight: FontWeight.bold,
                    color: Theme.of(context).primaryColor,
                  ),
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    transaction[index].title,
                    style: Theme.of(context).textTheme.titleLarge
                  ),
                  Text(
                    //Formatting the date
                    DateFormat.yMMMd().format(transaction[index].date),
                    style: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      },
      itemCount: transaction.length,
      ),
    );
  }
}
