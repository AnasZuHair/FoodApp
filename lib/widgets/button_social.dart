import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class ButtonSocial extends StatelessWidget {
  const ButtonSocial({
    Key? key,
    required this.size,
  }) : super(key: key);

  final Size size;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 20),
      child: Column(
        children: [
          Container(
            margin: EdgeInsets.symmetric(
              horizontal: size.width * 0.1,
              vertical: size.height * 0.00,
            ),
            alignment: Alignment.center,
            width: double.infinity,
            height: size.height * 0.09,
            decoration: BoxDecoration(
                color: Colors.grey.withOpacity(.5),
                borderRadius: BorderRadius.circular(15)),
            child: InkWell(
              onTap: () {},
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SvgPicture.asset('assets/icons/iconGoogle.svg'),
                  SizedBox(
                    width: size.width * 0.05,
                  ),
                  Text(
                    'Sign up with Google',
                    style: TextStyle(
                        color: Colors.black,
                        fontSize: size.width * 0.04,
                        fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
