import 'package:flutter/material.dart';
import 'package:gap/gap.dart';
import 'package:ticked_booking_app/utils/app_styles.dart';

class AppColumnLayout extends StatelessWidget {
  final bool? isColor;
  final CrossAxisAlignment alignment;
  final String firstText;
  final String secondText;
  const AppColumnLayout({Key? key, required this.firstText, required this.secondText, required this.alignment, required this.isColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: alignment,
      children: [
        Text(
          firstText,
          style: isColor==null?Styles.headLineStyle3.copyWith(color: Colors.white): Styles.headLineStyle3,
        ),
        const Gap(5),
        Text(
          secondText,
          style: isColor==null?Styles.headLineStyle4.copyWith(color: Colors.white): Styles.headLineStyle4,
        )
      ],
    );
  }
}
