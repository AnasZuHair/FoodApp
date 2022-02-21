import 'package:flutter/material.dart';
import 'package:food_app_ui/data/colors.dart';

class DescriptionTextWidget extends StatelessWidget {
  final int index;
  final String description;
  const DescriptionTextWidget({
    Key? key,
    required this.size,
    required this.index,
    required this.description,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Text(
      description,
      textAlign: TextAlign.center,
      style: TextStyle(
        color: kTextColor,
        fontWeight: FontWeight.w400,
        fontSize: size.width * 0.04,
      ),
    );
  }
}
