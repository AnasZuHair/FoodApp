import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_ui/data/colors.dart';

class DetailRestaurantWidget extends StatelessWidget {
  const DetailRestaurantWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: size.height * 0.03),
      margin: const EdgeInsets.only(top: 20),
      width: double.infinity,
      decoration: BoxDecoration(
          color: Colors.white, borderRadius: BorderRadius.circular(20)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            'Tava Restaurant',
            style: TextStyle(
                color: kTitleColor,
                fontSize: size.width * 0.06,
                fontWeight: FontWeight.bold),
          ),
          SizedBox(
            height: size.height * 0.01,
          ),
          Row(
            children: [
              SvgPicture.asset(
                'assets/icons/location_icon.svg',
                width: size.width * 0.05,
              ),
              SizedBox(
                width: size.width * 0.02,
              ),
              Text(
                'kazi Deiry, Taiger Pass,Chittagong',
                style: TextStyle(
                  color: kTitleColor,
                  fontSize: size.width * 0.03,
                ),
              ),
            ],
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Container(
            width: double.infinity,
            height: size.height * 0.25,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              image: const DecorationImage(
                  fit: BoxFit.cover,
                  image: AssetImage('assets/images/detail-image.png')),
            ),
          ),
          SizedBox(
            height: size.height * 0.03,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      SvgPicture.asset('assets/icons/clock.svg'),
                      SizedBox(
                        width: size.width * 0.02,
                      ),
                      Text(
                        'Open today',
                        style: TextStyle(
                          color: const Color(0xff6b7280),
                          fontSize: size.width * 0.04,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: size.height * 0.01,
                  ),
                  Text(
                    '10:00 AM - 12:00 PM',
                    style: TextStyle(
                        color: kTitleColor,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
              Row(
                children: [
                  SvgPicture.asset('assets/icons/directions_black.svg'),
                  SizedBox(
                    width: size.width * 0.01,
                  ),
                  Text(
                    'Visit the Restaurant',
                    style: TextStyle(
                        color: const Color(0xff2cbdff),
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.bold),
                  ),
                ],
              ),
            ],
          ),
        ],
      ),
    );
  }
}
