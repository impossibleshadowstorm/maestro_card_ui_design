import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maestro_card_ui_design/Widgets/cardSection.dart';
import 'package:maestro_card_ui_design/Widgets/expenses.dart';
import 'package:maestro_card_ui_design/Widgets/header.dart';
import 'package:maestro_card_ui_design/constants.dart';

void main(List<String> args) {
  runApp(
    MaterialApp(
      debugShowCheckedModeBanner: false,
      home: const HomePage(),
      theme: ThemeData(fontFamily: 'Circular'),
    ),
  );
}

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context) => Scaffold(
        backgroundColor: primaryColor,
        body: Column(
          children: const <Widget>[
            SizedBox(height: 20.0),
            SizedBox(
              height: 120.0,
              child: WalletHeader(),
            ),
            Expanded(
              child: CardSection(),
            ),
            Expanded(
              child: ExpenseSection(),
            ),
          ],
        ),
      ),
    );
  }
}
