import 'package:flutter/material.dart';
import 'package:loanapp/Dashboard.dart';

void main() { runApp(MyApp());

 }
class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'LoanApp',
      theme: ThemeData(
        primaryColor: Colors.white,
        accentColor: Colors.white,

      ),
      home: deshboard(),
    );
  }
}


