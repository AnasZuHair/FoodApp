import 'package:flutter/material.dart';

class ButtonWidget extends StatelessWidget {
  const ButtonWidget(
      {Key? key,
      required this.size,
      required this.bachColor,
      required this.titleColor,
      required this.title,
      required this.onTap})
      : super(key: key);

  final Size size;
  final Color bachColor, titleColor;
  final String title;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(
        horizontal: size.width * 0.1,
        vertical: size.height * 0.00,
      ),
      alignment: Alignment.center,
      width: double.infinity,
      height: size.height * 0.09,
      decoration: BoxDecoration(
          color: bachColor, borderRadius: BorderRadius.circular(15)),
      child: InkWell(
        onTap: () => onTap(),
        child: Text(
          title,
          style: TextStyle(
              color: titleColor,
              fontSize: size.width * 0.04,
              fontWeight: FontWeight.w500),
        ),
      ),
    );
  }
}
