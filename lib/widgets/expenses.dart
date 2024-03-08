import 'package:flutter/material.dart';

import 'package:expense_tracker/models/expense.dart';
import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<StatefulWidget> createState() {
    return _ExpenseState();
  }
}

class _ExpenseState extends State<Expenses> {
  final List<Expense> expensesData = [
    Expense(
      category: Category.food,
      date: DateTime.now(),
      price: 23.22,
      title: 'Flutter Course',
    ),
    Expense(
      category: Category.leisure,
      date: DateTime.now(),
      price: 15.99,
      title: 'Cinema',
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const Text('Expense Chart'),
          Expanded(child: ExpensesList(expenses: expensesData)),
        ],
      ),
    );
  }
}
