import 'package:expence_palnner/widgets/user_transactions.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTx;
final titleController = TextEditingController();
final amountController = TextEditingController();

NewTransaction(this.addNewTx);

void submitData(){
  final enteredTitle = titleController.text;
  final enteredAmount = double.parse(amountController.text);

  if(enteredTitle.isEmpty || enteredAmount <= 0){
    return;
  }
  addNewTx(
    enteredTitle,
    enteredAmount);
}


  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: const InputDecoration(labelText: 'Title'),
              controller: titleController,
              onSubmitted: (_) => submitData(),
            ),
            TextField(
              decoration: const InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              onSubmitted: (_) => submitData(),
            ),
            TextButton(
              child: const Text('Add Transaction',style: TextStyle(
                  color: Colors.purple),),
              onPressed: submitData,
            ),

          ],
        ),
      ),
    );
  }
}
