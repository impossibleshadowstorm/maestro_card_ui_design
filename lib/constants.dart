import 'package:flutter/material.dart';

Color primaryColor = Color(0xFFCADCEB);

List<BoxShadow> customeShadow = [
  BoxShadow(
    color: Colors.white.withOpacity(0.5),
    spreadRadius: -5,
    offset: const Offset(-5, -5),
    blurRadius: 30.0,
  ),
  BoxShadow(
    color: Colors.blue.shade900.withOpacity(0.2),
    spreadRadius: 2,
    offset: const Offset(7, 7),
    blurRadius: 20.0,
  ),
];

// static Color primaryColor = const Color(0xFFCADCED);

List pieColors = [
  Colors.indigo.shade400,
  Colors.blue,
  Colors.green,
  Colors.amber,
  Colors.deepOrange,
  Colors.brown,
];

List expenses = [
  {"name": "Groceries", "amount": 500.0},
  {"name": "Online Shopping", "amount": 100.0},
  {"name": "Eating Out", "amount": 80.0},
  {"name": "Bills", "amount": 50.0},
  {"name": "Subscriptions", "amount": 100.0},
  {"name": "Fees", "amount": 30.0},
];
