import 'package:flutter/material.dart';
import 'package:food_app_ui/data/colors.dart';

class TopDetail extends StatelessWidget {
  const TopDetail({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Container(
          alignment: Alignment.bottomCenter,
          width: double.infinity,
          height: size.height * 0.08,
          padding: const EdgeInsets.only(
            bottom: 10,
          ),
          decoration: BoxDecoration(
              color: kPrimeryColor,
              borderRadius: const BorderRadius.only(
                bottomLeft: Radius.circular(40),
                bottomRight: Radius.circular(40),
              )),
          child: Text(
            'Details Restaurant',
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.045,
            ),
          ),
        ),
        Positioned(
          bottom: 15,
          left: 30,
          child: InkWell(
            onTap: () {
              Navigator.pop(context);
            },
            child: const Icon(
              Icons.arrow_back,
              color: Colors.white,
            ),
          ),
        ),
      ],
    );
  }
}
