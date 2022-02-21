import 'package:flutter/material.dart';
import 'package:food_app_ui/data/colors.dart';
import 'package:food_app_ui/pages/create_account_page.dart';
import 'package:food_app_ui/pages/login_page.dart';

bulidButtomSheet(BuildContext context, Size size) {
  showModalBottomSheet(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(40),
          topRight: Radius.circular(40),
        ),
      ),
      isDismissible: true,
      elevation: 10,
      isScrollControlled: true,
      context: context,
      builder: (context) {
        return SizedBox(
            height: size.height / 1.1,
            child: DefaultTabController(
              length: 2,
              child: Container(
                  padding: EdgeInsets.symmetric(horizontal: size.width * 0.05),
                  child: Column(
                    children: [
                      Expanded(
                        child: SizedBox(
                          child: Column(
                            children: [
                              Container(
                                margin: const EdgeInsets.only(top: 20),
                                width: 80,
                                height: 10,
                                decoration: BoxDecoration(
                                    color: Colors.grey[350],
                                    borderRadius: BorderRadius.circular(5)),
                              ),
                              Expanded(
                                  child: Container(
                                alignment: Alignment.bottomCenter,
                                child: TabBar(
                                  indicatorPadding:
                                      const EdgeInsets.symmetric(horizontal: 5),
                                  indicatorSize: TabBarIndicatorSize.label,
                                  indicatorColor: kPrimeryColor,
                                  labelStyle: TextStyle(
                                      fontSize: size.width * 0.04,
                                      fontWeight: FontWeight.w700),
                                  labelColor: kPrimeryColor,
                                  unselectedLabelColor: kTextColor,
                                  tabs: const [
                                    Tab(text: 'Create Accoun'),
                                    Tab(
                                      text: 'Login',
                                    )
                                  ],
                                ),
                              ))
                            ],
                          ),
                        ),
                      ),
                      const Expanded(
                        flex: 5,
                        child: SizedBox(
                          child: TabBarView(
                            children: [
                              CreateAcuuontPage(),
                              LoginPage(),
                            ],
                          ),
                        ),
                      )
                    ],
                  )),
            ));
      });
}
