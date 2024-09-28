import 'package:expence_palnner/user_transactions.dart';
import 'package:flutter/material.dart';

class NewTransaction extends StatelessWidget {
  final Function addNewTx;
final titleController = TextEditingController();
final amountController = TextEditingController();

NewTransaction(this.addNewTx);

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Container(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            TextField(
              decoration: InputDecoration(
                labelText: 'Title',
              ),
              controller: titleController,
              // onChanged: (value){
              //   titleInput = value;
              // },
            ),
            TextField(
              decoration: InputDecoration(labelText: 'Amount'),
              controller: amountController,
              keyboardType: TextInputType.number,
              // onChanged: (value){
              //   amountInput = value;
              // },

            ),
            TextButton(
              child: Text('Add Transaction',style: TextStyle(
                  color: Colors.purple),),
              onPressed: (){
                addNewTx(titleController.text, double.parse(amountController.text),);
              },
            ),

          ],
        ),
      ),
    );
  }
}
