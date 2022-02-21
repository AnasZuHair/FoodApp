import 'package:flutter/material.dart';
import 'package:food_app_ui/data/colors.dart';

class ButtonAndRegisterText extends StatelessWidget {
  const ButtonAndRegisterText({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: 'By Logging In Or Registering, You Have Agreed To',
          style: TextStyle(
              color: Colors.black,
              fontSize: size.width * 0.033,
              fontWeight: FontWeight.w600),
          children: [
            TextSpan(
                text: 'The Terms And\n Conditions',
                style: TextStyle(
                    color: kPrimeryColor,
                    fontSize: size.width * 0.032,
                    fontWeight: FontWeight.w600)),
            TextSpan(
                text: 'And',
                style: TextStyle(
                    color: Colors.black,
                    fontSize: size.width * 0.032,
                    fontWeight: FontWeight.w600)),
            TextSpan(
                text: 'Privacy Policy',
                style: TextStyle(
                    color: kPrimeryColor,
                    fontSize: size.width * 0.032,
                    fontWeight: FontWeight.w600)),
          ],
        ));
  }
}
