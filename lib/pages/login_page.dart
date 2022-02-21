import 'package:flutter/material.dart';
import 'package:food_app_ui/data/colors.dart';
import 'package:food_app_ui/screens/forgetPassword/forget_password_screen.dart';
import 'package:food_app_ui/screens/home/home_screen.dart';
import 'package:food_app_ui/widgets/button_register.dart';
import 'package:food_app_ui/widgets/button_social.dart';
import 'package:food_app_ui/widgets/from_item.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SizedBox(
      child: SingleChildScrollView(
        physics: const BouncingScrollPhysics(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            FromItems(
              obscureText: false,
              hintText: 'Eg namaemail@emailkamu.com',
              size: size,
              title: 'Email address',
              padding: const EdgeInsets.only(top: 15),
            ),
            FromItems(
              hintText: '*** *** ***',
              size: size,
              title: 'Password',
              obscureText: true,
              padding: const EdgeInsets.only(top: 15),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) =>
                                  const ForgetPasswordScreen()));
                    },
                    child: Text(
                      'Forget Password?',
                      style: TextStyle(
                          fontSize: size.width * 0.035,
                          fontWeight: FontWeight.w700,
                          color: kPrimeryColor),
                    ),
                  ),
                ],
              ),
            ),
            ButtonRegister(
              onPress: () {
                Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => const HomeScreen()));
              },
              text: 'Login',
              size: size,
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Container(
                margin: EdgeInsets.symmetric(horizontal: size.width * 0.25),
                child: const Divider(
                  color: Colors.grey,
                  height: 5,
                ),
              ),
            ),
            ButtonSocial(size: size)
          ],
        ),
      ),
    );
  }
}
