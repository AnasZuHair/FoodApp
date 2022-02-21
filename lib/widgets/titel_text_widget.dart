import 'package:flutter/material.dart';
import 'package:food_app_ui/data/colors.dart';

class TitleTextWidget extends StatelessWidget {
  final int index;
  final String title;
  const TitleTextWidget({
    Key? key,
    required this.size,
    required this.index,
    required this.title,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
        color: kTitleColor,
        fontWeight: FontWeight.w500,
        fontSize: size.width * 0.07,
      ),
    );
  }
}
