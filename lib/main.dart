import 'package:flutter/material.dart';
import 'package:expenses_tracker/widgets/expenses.dart';

void main() {
  runApp(
    MaterialApp(
      home: const Expenses(),
      theme: ThemeData(useMaterial3: true),
    ),
  );
}