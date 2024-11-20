import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import '../models/transaction.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transaction;
  TransactionList(this.transaction);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 300,
      child: transaction.isEmpty ? Column(
        children: [
          const Text('No transactions added yet!',style: TextStyle(fontFamily: 'OpenSans',fontSize: 18,fontWeight: FontWeight.bold)),
          const SizedBox(height: 10),
          SizedBox(
            height: 200,
              child: Image.asset('assets/images/waiting.png',fit: BoxFit.cover)),
        ],
      ) : ListView.builder(itemBuilder: (ctx, index) {
        return Card(
          elevation: 5,
          margin: const EdgeInsets.symmetric(vertical: 8, horizontal: 5),
          child: ListTile(
            leading: CircleAvatar(
              radius: 30,
              child:Padding(
                padding: const EdgeInsets.all(6),
                child: FittedBox(child: Text('\$${transaction[index].amount}')),
              ),
            ),
            title: Text(transaction[index].title, style: Theme.of(context).textTheme.titleLarge,),
            subtitle: Text(DateFormat.yMMMd().format(transaction[index].date)),
          ),
        );
      },
      itemCount: transaction.length,
      ),
    );
  }
}
