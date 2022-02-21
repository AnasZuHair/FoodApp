import 'package:flutter/material.dart';
import 'package:food_app_ui/widgets/button_register.dart';
import 'package:food_app_ui/widgets/button_social.dart';
import 'package:food_app_ui/widgets/from_item.dart';

class CreateAcuuontPage extends StatelessWidget {
  const CreateAcuuontPage({Key? key}) : super(key: key);

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
              hintText: 'Enter your full name',
              size: size,
              title: 'Full Name',
              padding: const EdgeInsets.only(top: 15),
            ),
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
            ButtonRegister(
              onPress: () {},
              text: 'Registration',
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
