import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_ui/data/colors.dart';

class ProfileItem extends StatelessWidget {
  final String text;
  final String svgImage;
  const ProfileItem({
    Key? key,
    required this.size,
    required this.text,
    required this.svgImage,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            SvgPicture.asset(svgImage),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Text(
                text,
                style:
                    TextStyle(color: kTitleColor, fontSize: size.width * 0.05),
              ),
            ),
          ],
        ),
        Icon(
          Icons.arrow_forward_ios,
          size: size.width * 0.04,
        ),
      ],
    );
  }
}
