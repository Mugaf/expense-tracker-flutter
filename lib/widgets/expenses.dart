import 'package:expense_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expense_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});
  @override
  State<StatefulWidget> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Flutter Course',
      amount: 10.0,
      date: DateTime.now(),
      category: Category.work,
    ),
    Expense(
      title: 'Bus',
      amount: 2.0,
      date: DateTime.now(),
      category: Category.travel,
    ),
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('My Expenses'),
        actions: [IconButton(onPressed: () {}, icon: const Icon(Icons.add))],
      ),
      body: Column(
        children: [
          const Text('The Chart'),
          Expanded(
            child: ExpensesList(
              expenses: _registeredExpenses,
            ),
          ),
        ],
      ),
    );
  }
}
