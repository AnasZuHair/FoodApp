import 'package:flutter/material.dart';
import 'package:food_app_ui/data/colors.dart';
import 'package:food_app_ui/widgets/button_widgets.dart';

class ButtonRegister extends StatelessWidget {
  const ButtonRegister({
    Key? key,
    required this.size,
    required this.text,
    required this.onPress,
  }) : super(key: key);

  final Size size;
  final String text;
  final Function onPress;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 30),
      child: ButtonWidget(
          size: size,
          bachColor: kPrimeryColor,
          titleColor: Colors.white,
          title: text,
          onTap: () {
            onPress();
          }),
    );
  }
}
