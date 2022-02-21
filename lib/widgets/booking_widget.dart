import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:food_app_ui/data/colors.dart';
import 'package:food_app_ui/moddels/booking_list_model.dart';

class BookingWidget extends StatelessWidget {
  const BookingWidget({
    Key? key,
    required this.size,
    required this.buttonText,
    required this.vertical,
    required this.onTap,
  }) : super(key: key);

  final Size size;
  final String buttonText;
  final vertical;
  final Function onTap;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
          horizontal: size.width * 0.05, vertical: vertical),
      child: Column(
        children: List.generate(
            booking.length,
            (index) => Stack(
                  children: [
                    Container(
                      padding: const EdgeInsets.symmetric(
                          vertical: 10, horizontal: 15),
                      margin: const EdgeInsets.only(top: 10),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: Colors.white),
                      child: Row(
                        children: [
                          SizedBox(
                            height: 80,
                            width: 80,
                            child: Image.asset(
                              booking[index].image,
                              fit: BoxFit.cover,
                            ),
                          ),
                          SizedBox(
                            width: size.width * 0.03,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(bottom: 10),
                                child: Text(
                                  booking[index].title,
                                  style: TextStyle(
                                      color: kTitleColor,
                                      fontSize: size.width * 0.045,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              SizedBox(
                                width: 200,
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
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
                                          booking[index].subtitle,
                                          style: TextStyle(
                                            color: kTitleColor,
                                            fontSize: size.width * 0.03,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                    ),
                    Positioned(
                      right: 10,
                      bottom: 10,
                      child: InkWell(
                        onTap: () => onTap(),
                        child: Container(
                          height: 40,
                          width: size.width / 3.5,
                          alignment: Alignment.center,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 30, vertical: 10),
                          decoration: BoxDecoration(
                            color: kPrimeryColor,
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: Text(
                            buttonText,
                            style: TextStyle(
                                color: Colors.white,
                                fontSize: size.width * 0.04),
                          ),
                        ),
                      ),
                    ),
                  ],
                )),
      ),
    );
  }
}
