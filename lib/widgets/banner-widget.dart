import 'package:flutter/material.dart';
import 'package:food_app_ui/moddels/banner_model.dart';

class BannerWidget extends StatelessWidget {
  const BannerWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Column(
        children: [
          SizedBox(
              // height: size.height / 5,
              width: double.infinity,
              child: SingleChildScrollView(
                physics: const BouncingScrollPhysics(),
                scrollDirection: Axis.horizontal,
                child: Row(
                  children: List.generate(
                    banner.length,
                    (index) => Container(
                      padding: EdgeInsets.only(
                        left: size.width * 0.05,
                        top: size.height * 0.01,
                        right: size.width * 0.01,
                        //right: size.width * 0.05,
                      ),
                      child: Stack(
                        children: [
                          Container(
                            padding: EdgeInsets.only(
                                left: size.width * 0.06,
                                top: size.height * 0.02,
                                bottom: size.height * 0.02),
                            decoration: BoxDecoration(
                                gradient: banner[index].gradientcolor,
                                borderRadius: BorderRadius.circular(35)),
                            child: Row(
                              children: [
                                Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Image.asset(
                                      banner[index].topImage,
                                      width: size.width * 0.06,
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(
                                          top: 12, bottom: 5),
                                      child: Text(
                                        banner[index].title,
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: size.width * 0.06,
                                          fontWeight: FontWeight.w700,
                                        ),
                                      ),
                                    ),
                                    Text(
                                      'We are here with the best\ndeserts intown.',
                                      style: TextStyle(
                                          color: Colors.white,
                                          fontSize: size.width * 0.026),
                                    ),
                                    Padding(
                                      padding: const EdgeInsets.only(top: 8),
                                      child: InkWell(
                                        onTap: () {},
                                        child: Row(
                                          children: [
                                            Text(
                                              'Order',
                                              style: TextStyle(
                                                  color: Colors.white,
                                                  fontSize: size.width * 0.035),
                                            ),
                                            Icon(
                                              Icons.arrow_forward_ios,
                                              color: Colors.white,
                                              size: size.width * 0.035,
                                            )
                                          ],
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: size.width * 0.03,
                                ),
                                SizedBox(
                                  height: size.height * 0.15,
                                  width: size.width * 0.4,
                                )
                              ],
                            ),
                          ),
                          Positioned(
                            right: 0,
                            child: ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topRight: Radius.circular(35)),
                              child: Image.asset(
                                banner[index].imageBanner,
                                height: size.height * 0.15,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
