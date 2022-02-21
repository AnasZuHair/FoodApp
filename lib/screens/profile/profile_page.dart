import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_ui/data/colors.dart';
import 'package:food_app_ui/widgets/profile_item.dart';
import 'package:food_app_ui/widgets/top_profile_accunt.dart';

class ProfilePage extends StatelessWidget {
  const ProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
        width: double.infinity,
        child: Column(
          children: [
            TopProfileAccunt(size: size),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: size.height * 0.1),
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.045, vertical: size.height * 0.04),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 5),
                ],
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/user_icon.svg'),
                      Padding(
                        padding: const EdgeInsets.only(left: 15),
                        child: Text(
                          'Account setting',
                          style: TextStyle(
                              color: kTitleColor, fontSize: size.width * 0.035),
                        ),
                      ),
                    ],
                  ),
                  SvgPicture.asset('assets/icons/pencell_icon.svg'),
                ],
              ),
            ),
            Container(
              width: double.infinity,
              margin: EdgeInsets.only(top: size.height * 0.04),
              padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.045, vertical: size.height * 0.04),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(15),
                boxShadow: const [
                  BoxShadow(color: Colors.grey, blurRadius: 5),
                ],
              ),
              child: Column(
                children: [
                  ProfileItem(
                      text: 'Language',
                      svgImage: 'assets/icons/language_icon.svg',
                      size: size),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  ProfileItem(
                      text: 'Feedback',
                      svgImage: 'assets/icons/feedback_icon.svg',
                      size: size),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  ProfileItem(
                      text: 'Rate us',
                      svgImage: 'assets/icons/rate_icon.svg',
                      size: size),
                  SizedBox(
                    height: size.height * 0.025,
                  ),
                  ProfileItem(
                      text: 'New Version',
                      svgImage: 'assets/icons/newVesion_icon.svg',
                      size: size),
                ],
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            GestureDetector(
              onTap: () {},
              child: Container(
                padding:
                    const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
                decoration: BoxDecoration(
                  color: const Color(0xffeb4646),
                  borderRadius: BorderRadius.circular(15),
                  boxShadow: const [
                    BoxShadow(color: Colors.grey, blurRadius: 5),
                  ],
                ),
                child: const Text(
                  'Logout',
                  style: TextStyle(
                      color: Colors.white,
                      fontSize: 20,
                      fontWeight: FontWeight.bold),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
