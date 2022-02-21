import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_ui/data/colors.dart';
import 'package:food_app_ui/widgets/button_widgets.dart';

class SuccessPasswordScreen extends StatelessWidget {
  const SuccessPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbackgrounColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.25),
                child: SvgPicture.asset('assets/icons/SuccessIcon.svg'),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 30),
                child: Text(
                  'Success',
                  style: TextStyle(
                    color: kTitleColor,
                    fontWeight: FontWeight.w500,
                    fontSize: size.width * 0.07,
                  ),
                ),
              ),
              Text(
                "Please check your email for create \na new password",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: kTitleColor,
                  fontWeight: FontWeight.w300,
                  fontSize: size.width * 0.06,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(top: 50),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(
                      "Can't get email?",
                      style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w400,
                        fontSize: size.width * 0.06,
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Text(
                        'Resubmit',
                        style: TextStyle(
                          color: kPrimeryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: size.width * 0.06,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Expanded(
                  child: Padding(
                padding: const EdgeInsets.only(bottom: 40),
                child: Container(
                  alignment: Alignment.bottomCenter,
                  child: ButtonWidget(
                      size: size,
                      bachColor: kPrimeryColor,
                      titleColor: Colors.white,
                      title: 'Back Email',
                      onTap: () {
                        Navigator.pop(context);
                      }),
                ),
              )),
            ],
          ),
        ),
      ),
    );
  }
}
