import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_ui/data/colors.dart';
import 'package:food_app_ui/screens/booking/booking_page.dart';
import 'package:food_app_ui/screens/home/home_page.dart';
import 'package:food_app_ui/screens/profile/profile_page.dart';

// ignore: must_be_immutable
class HomeScreen extends StatefulWidget {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int selcedetIndex = 0;

  List bottomNavigationBarIcons = [
    'assets/icons/Home_icon.svg',
    'assets/icons/Booking_icon.svg',
    'assets/icons/Profile_icon.svg'
  ];

  List childrenBody = [
    const HomePage(),
    const BookingPage(),
    const ProfilePage(),
  ];

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.grey.shade300,
        bottomNavigationBar: Container(
          height: size.height * 0.08,
          decoration: const BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(20),
                topRight: Radius.circular(20),
              )),
          child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: List.generate(
                  bottomNavigationBarIcons.length,
                  (index) => InkWell(
                      onTap: () {
                        setState(() => selcedetIndex = index);
                      },
                      child: SvgPicture.asset(
                        bottomNavigationBarIcons[index],
                        color: selcedetIndex == index
                            ? kPrimeryColor
                            : Colors.grey.shade700,
                      )))),
        ),
        body: childrenBody[selcedetIndex],
      ),
    );
  }
}
