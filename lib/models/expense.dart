import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, movie, leisure, work }

class Expense {
  Expense({
    required this.date,
    required this.category,
    required this.price,
    required this.title,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double price;
  final DateTime date;
  final Category category;
}
