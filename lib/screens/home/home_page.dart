import 'package:flutter/material.dart';
import 'package:food_app_ui/data/colors.dart';
import 'package:food_app_ui/screens/booking/booking_page.dart';
import 'package:food_app_ui/widgets/banner-widget.dart';
import 'package:food_app_ui/widgets/booking_widget.dart';
import 'package:food_app_ui/widgets/list_horizontal_widget.dart';
import 'package:food_app_ui/widgets/see_all_row_widget.dart';
import 'package:food_app_ui/widgets/top_widget_home_page.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          TopWidgetHomePage(size: size),
          Expanded(
            child: SizedBox(
                child: SingleChildScrollView(
              physics: const BouncingScrollPhysics(),
              child: Column(
                children: [
                  BannerWidget(size: size),
                  SeeAllRowWidget(
                    iconColor: kTextColor,
                    seeAllColor: const Color(0xff6b7280),
                    onTap: () {},
                    size: size,
                    title: 'Today New Arivable',
                    subTitle: 'Best of the today  food list update',
                  ),
                  ListHorizontalWidget(size: size),
                  SeeAllRowWidget(
                    iconColor: kTextColor,
                    seeAllColor: const Color(0xff6b7280),
                    onTap: () {},
                    size: size,
                    title: 'Explore Restaurant',
                    subTitle: 'Check your city Near by Restaurant',
                  ),
                  BookingWidget(
                    size: size,
                    buttonText: 'Book',
                    vertical: size.height * 0.03,
                    onTap: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => const BookingPage(),
                          ));
                    },
                  ),
                ],
              ),
            )),
          ),
        ],
      ),
    );
  }
}
