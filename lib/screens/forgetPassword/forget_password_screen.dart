import 'package:flutter/material.dart';
import 'package:food_app_ui/data/colors.dart';
import 'package:food_app_ui/screens/forgetPassword/success_password_screen.dart';
import 'package:food_app_ui/widgets/button_widgets.dart';
import 'package:food_app_ui/widgets/from_item.dart';

class ForgetPasswordScreen extends StatelessWidget {
  const ForgetPasswordScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: kbackgrounColor,
        body: Container(
          padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(top: size.height * 0.15, bottom: 10),
                child: Text(
                  'Forget Password',
                  style: TextStyle(
                    color: kTitleColor,
                    fontWeight: FontWeight.w500,
                    fontSize: size.width * 0.07,
                  ),
                ),
              ),
              Text(
                'Enter your registered email below',
                style: TextStyle(
                  color: kTitleColor,
                  fontWeight: FontWeight.w300,
                  fontSize: size.width * 0.06,
                ),
              ),
              FromItems(
                  size: size,
                  hintText: 'Eg namaemail@emailkamu.com',
                  title: 'Email address',
                  padding: EdgeInsets.only(top: size.height * 0.09),
                  obscureText: false),
              Padding(
                padding: const EdgeInsets.only(top: 20),
                child: Row(
                  children: [
                    Text(
                      "Remember the password? ",
                      style: TextStyle(
                        color: kTitleColor,
                        fontWeight: FontWeight.w400,
                        fontSize: size.width * 0.04,
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Text(
                        'Sign in',
                        style: TextStyle(
                          color: kPrimeryColor,
                          fontWeight: FontWeight.w600,
                          fontSize: size.width * 0.04,
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
                      title: 'Submit',
                      onTap: () {
                        Navigator.push(
                            context,
                            MaterialPageRoute(
                                builder: (context) =>
                                    const SuccessPasswordScreen()));
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
