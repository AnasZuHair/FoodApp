import 'package:flutter/material.dart';
import 'package:food_app_ui/data/colors.dart';
import 'package:food_app_ui/screens/detail/detail_screen.dart';
import 'package:food_app_ui/widgets/booking_widget.dart';

class BookingPage extends StatelessWidget {
  const BookingPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.grey.shade100,
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            width: double.infinity,
            padding: EdgeInsets.symmetric(vertical: size.height * 0.04),
            decoration: BoxDecoration(
                color: kPrimeryColor,
                borderRadius: const BorderRadius.only(
                  bottomLeft: Radius.circular(40),
                  bottomRight: Radius.circular(40),
                )),
            child: Text(
              'Booking History',
              style: TextStyle(
                color: Colors.white,
                fontSize: size.width * 0.045,
              ),
            ),
          ),
          Expanded(
              child: Column(
            children: [
              BookingWidget(
                size: size,
                buttonText: 'Check',
                vertical: size.height * 0.01,
                onTap: () {
                  Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => const DetailScreen(),
                      ));
                },
              ),
              Padding(
                padding: const EdgeInsets.only(
                  top: 20,
                ),
                child: InkWell(
                  onTap: () {},
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(
                        Icons.add,
                        color: Color(0xff6b7280),
                        size: 30,
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Text(
                        'Booking more ',
                        style: TextStyle(
                          color: const Color(0xff6b7280),
                          fontSize: size.width * 0.05,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ))
        ],
      ),
    );
  }
}
