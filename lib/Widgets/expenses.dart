import 'package:flutter/material.dart';
import 'package:maestro_card_ui_design/Widgets/pieChart.dart';
import 'package:maestro_card_ui_design/constants.dart';

class ExpenseSection extends StatelessWidget {
  const ExpenseSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      mainAxisAlignment: MainAxisAlignment.start,
      children: <Widget>[
        Container(
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: const Text(
            "Expenses",
            style: TextStyle(
              fontSize: 20.0,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        Row(
          children: <Widget>[
            Expanded(
              flex: 6,
              child: Container(
                  margin: const EdgeInsets.symmetric(
                      horizontal: 20.0, vertical: 40.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: expenses
                        .map(
                          (value) => Padding(
                            padding: const EdgeInsets.all(5.0),
                            child: Row(
                              children: <Widget>[
                                CircleAvatar(
                                  radius: 5,
                                  backgroundColor:
                                      pieColors[expenses.indexOf(value)],
                                ),
                                const SizedBox(width: 5.0),
                                Text(
                                  value["name"],
                                  style: const TextStyle(
                                    fontSize: 15.0,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        )
                        .toList(),
                  )),
            ),
            const Expanded(
              flex: 6,
              child: PieChart(),
            ),
          ],
        ),
      ],
    );
  }
}
