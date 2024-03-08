import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem({super.key, required this.items});

  final Expense items;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 16,
          vertical: 20,
        ),
        child: Column(
          children: [
            Text(items.title),
            const SizedBox(
              height: 4,
            ),
            Row(
              children: [
                Text('\$${items.price.toStringAsFixed(2)}'),
                const Spacer(),
                Icon(categoryIcon[items.category]),
                Text(items.formatedDate),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
