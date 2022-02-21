import 'package:flutter/material.dart';
import 'package:food_app_ui/data/colors.dart';
import 'package:food_app_ui/widgets/Button_register_text.dart';
import 'package:food_app_ui/widgets/bulid_buttom.dart';
import 'package:food_app_ui/widgets/button_widgets.dart';

class RegisterScreen extends StatelessWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              width: double.infinity,
              height: size.height * 0.4,
              child: Image.asset(
                'assets/images/register.png',
                //fit: BoxFit.cover,
                width: size.width * 0.7,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30, bottom: 20),
              child: Text(
                'Welcome',
                style: TextStyle(
                  color: kTitleColor,
                  fontWeight: FontWeight.w500,
                  fontSize: size.width * 0.07,
                ),
              ),
            ),
            Text(
              '''Before Enjoying Foodmedia Services
    Please Register First''',
              textAlign: TextAlign.center,
              style: TextStyle(
                color: kTextColor,
                fontWeight: FontWeight.w400,
                fontSize: size.width * 0.04,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 30),
              child: ButtonWidget(
                  onTap: () {
                    bulidButtomSheet(context, size);
                  },
                  bachColor: kPrimeryColor,
                  title: 'Create Accunt',
                  titleColor: Colors.white,
                  size: size),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(bottom: 20),
              child: ButtonWidget(
                  onTap: () {},
                  bachColor: kPrimeryColor.withOpacity(.3),
                  title: 'Login',
                  titleColor: kPrimeryColor,
                  size: size),
            ),
            ButtonAndRegisterText(size: size)
          ],
        ),
      ),
    );
  }
}
