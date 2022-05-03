import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:maestro_card_ui_design/Widgets/cardDetails.dart';
import 'package:maestro_card_ui_design/constants.dart';

class CardSection extends StatelessWidget {
  const CardSection({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Container(
          alignment: Alignment.topLeft,
          margin: const EdgeInsets.symmetric(horizontal: 20.0),
          child: Text(
            "Selected Card",
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 18.0.sp,
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            scrollDirection: Axis.horizontal,
            itemCount: 2,
            itemBuilder: (context, index) {
              return Container(
                width: 1.sw,
                margin: const EdgeInsets.symmetric(
                    horizontal: 20.0, vertical: 40.0),
                decoration: BoxDecoration(
                  color: primaryColor,
                  boxShadow: customeShadow,
                  borderRadius: BorderRadius.circular(20.0),
                ),
                child: Stack(
                  children: <Widget>[
                    Positioned.fill(
                      top: 150,
                      bottom: -200,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: customeShadow,
                          shape: BoxShape.circle,
                          color: Colors.white38,
                        ),
                      ),
                    ),
                    Positioned.fill(
                      left: -300,
                      top: -100,
                      bottom: -100,
                      child: Container(
                        decoration: BoxDecoration(
                          boxShadow: customeShadow,
                          shape: BoxShape.circle,
                          color: Colors.white38,
                        ),
                      ),
                    ),
                    const CardDetails(),
                  ],
                ),
              );
            },
          ),
        )
      ],
    );
  }
}
