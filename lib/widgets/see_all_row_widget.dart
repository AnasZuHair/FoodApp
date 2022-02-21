import 'package:flutter/material.dart';
import 'package:food_app_ui/data/colors.dart';

class SeeAllRowWidget extends StatelessWidget {
  const SeeAllRowWidget({
    Key? key,
    required this.size,
    required this.title,
    required this.subTitle,
    required this.onTap,
    required this.seeAllColor,
    required this.iconColor,
  }) : super(key: key);

  final Size size;
  final String title;
  final String subTitle;
  final Function onTap;
  final Color seeAllColor;
  final Color iconColor;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(
          left: size.width * 0.05,
          right: size.width * 0.05,
          top: size.height * 0.04),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                title,
                style: TextStyle(
                    color: kTitleColor,
                    fontSize: size.width * 0.05,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                subTitle,
                style: TextStyle(
                  color: kTextColor,
                  fontSize: size.width * 0.035,
                ),
              ),
            ],
          ),
          InkWell(
            onTap: () => onTap(),
            child: Row(
              children: [
                Text(
                  'See All ',
                  style: TextStyle(
                    color: seeAllColor,
                    fontSize: size.width * 0.035,
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios,
                  color: iconColor,
                  size: size.width * 0.035,
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
