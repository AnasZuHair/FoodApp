import 'package:flutter/material.dart';

class BannerModel {
  final String title;
  final String imageBanner;
  final String topImage;
  final dynamic gradientcolor;

  const BannerModel(
      {required this.title,
      required this.imageBanner,
      required this.topImage,
      required this.gradientcolor});
}

List<BannerModel> banner = <BannerModel>[
  const BannerModel(
    title: 'Flash Offer',
    imageBanner: 'assets/images/banner_image1.png',
    topImage: 'assets/images/image 1.png',
    gradientcolor: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xffff9f06),
          Color(0xffffe184),
        ]),
  ),
  const BannerModel(
    title: 'New Arivable',
    imageBanner: 'assets/images/banner_image2.png',
    topImage: 'assets/images/image 2.png',
    gradientcolor: LinearGradient(
        begin: Alignment.centerLeft,
        end: Alignment.centerRight,
        colors: [
          Color(0xffff9f06),
          Color(0xffffe184),
        ]),
  ),
];
