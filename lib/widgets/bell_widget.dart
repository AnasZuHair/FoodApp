import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class BellWidget extends StatelessWidget {
  const BellWidget({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Stack(clipBehavior: Clip.none, children: [
      Container(
        padding: const EdgeInsets.all(7),
        height: 35,
        width: 35,
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: Colors.grey.shade200,
        ),
        child: SvgPicture.asset('assets/icons/bell.svg'),
      ),
      Positioned(
        right: -3,
        top: -3,
        child: Container(
          alignment: Alignment.center,
          width: 15,
          height: 15,
          decoration: const BoxDecoration(
            shape: BoxShape.circle,
            color: Colors.red,
          ),
          child: Text(
            '3',
            style: TextStyle(
              color: Colors.white,
              fontSize: size.width * 0.03,
            ),
          ),
        ),
      ),
    ]);
  }
}
