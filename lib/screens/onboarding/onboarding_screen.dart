import 'package:flutter/material.dart';
import 'package:food_app_ui/data/colors.dart';

import 'package:food_app_ui/moddels/onboardingmodels.dart';
import 'package:food_app_ui/screens/registration/register_screen.dart';
import 'package:food_app_ui/widgets/descriptoin_text_widget.dart';
import 'package:food_app_ui/widgets/titel_text_widget.dart';
//import 'package:google_fonts/google_fonts.dart';

class OnBoardingScreen extends StatefulWidget {
  const OnBoardingScreen({Key? key}) : super(key: key);

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

PageController _pageController = PageController();
int selectedPage = 0;
nextPage() {
  _pageController.nextPage(
      duration: const Duration(milliseconds: 200), curve: Curves.ease);
}

jumpPage() {
  _pageController.jumpToPage(2);
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        body: SizedBox(
          width: double.infinity,
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              PageView.builder(
                  onPageChanged: (value) {
                    setState(() {
                      selectedPage = value;
                    });
                  },
                  controller: _pageController,
                  itemCount: onboarding.length,
                  itemBuilder: (context, index) {
                    return Padding(
                      padding: EdgeInsets.symmetric(
                        horizontal: size.width * 0.05,
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: double.infinity,
                            height: size.height * 0.4,
                            child: Image.asset(
                              onboarding[index].imageAssets,
                              fit: BoxFit.cover,
                              width: size.width * 0.7,
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                              vertical: 40,
                            ),
                            child: TitleTextWidget(
                              title: onboarding[index].title,
                              size: size,
                              index: index,
                            ),
                          ),
                          const SizedBox(
                            height: 40,
                          ),
                          DescriptionTextWidget(
                            size: size,
                            index: index,
                            description: onboarding[index].description,
                          ),
                        ],
                      ),
                    );
                  }),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: size.width * 0.05,
                  vertical: size.height * 0.04,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    InkWell(
                      onTap: () {
                        jumpPage();
                      },
                      child: Text(
                        "Skip",
                        style: TextStyle(
                          color: kTextColor,
                          fontWeight: FontWeight.w400,
                          fontSize: size.width * 0.04,
                        ),
                      ),
                    ),
                    Row(
                      children: List.generate(
                          onboarding.length,
                          (index) => AnimatedContainer(
                                duration: const Duration(milliseconds: 300),
                                margin: const EdgeInsets.symmetric(
                                  horizontal: 5,
                                ),
                                width: 10,
                                height: 10,
                                decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  color: selectedPage == index
                                      ? kIconColor
                                      : kTextColor.withOpacity(.5),
                                ),
                              )),
                    ),
                    InkWell(
                      onTap: () {
                        if (selectedPage == onboarding.length - 1) {
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) =>
                                      const RegisterScreen()));
                        } else {
                          nextPage();
                        }
                      },
                      child: Icon(
                        Icons.arrow_forward,
                        color: kIconColor,
                        size: size.width * 0.06,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
