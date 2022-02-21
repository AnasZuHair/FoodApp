import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:food_app_ui/data/colors.dart';
import 'package:food_app_ui/moddels/list_hor_model.dart';

class ListHorizontalWidget extends StatelessWidget {
  const ListHorizontalWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      physics: const BouncingScrollPhysics(),
      scrollDirection: Axis.horizontal,
      child: Padding(
        padding:
            EdgeInsets.only(left: size.width * 0.05, top: size.height * 0.02),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: List.generate(
            listHordata.length,
            (index) => Container(
              margin: EdgeInsets.only(
                right: size.width * 0.03,
              ),
              padding: const EdgeInsets.all(15),
              decoration: BoxDecoration(
                  color: Colors.white, borderRadius: BorderRadius.circular(15)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    listHordata[index].image,
                    width: size.width * 0.35,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 10, bottom: 5),
                    child: Text(
                      listHordata[index].title,
                      style: TextStyle(
                          color: kTitleColor,
                          fontSize: size.width * 0.045,
                          fontWeight: FontWeight.bold),
                    ),
                  ),
                  Row(
                    children: [
                      SvgPicture.asset(
                        'assets/icons/location_icon.svg',
                        width: size.width * 0.04,
                      ),
                      SizedBox(
                        width: size.width * 0.01,
                      ),
                      Text(
                        listHordata[index].subTitle,
                        style: TextStyle(
                            color: kTextColor, fontSize: size.width * 0.03),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
