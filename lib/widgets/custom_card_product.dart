import 'package:flutter/material.dart';

class CustomCardProduct extends StatelessWidget {
  final String image;
  const CustomCardProduct({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Stack(
          clipBehavior: Clip.none,
          children: [
            Container(
              width: 160,
              height: 180,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Colors.black,
              ),
            ),
            Positioned(
              top: -60,
              left: -15,
              child: Image.asset(
                image,
                height: 200,
                width: 200,
              ),
            ),
          ],
        ),
        Padding(
          padding: const EdgeInsets.only(top: 90.0, left: 20),
          child: Column(
            children: [
              Text(
                'Spicy Salmon',
                style: TextStyle(
                    fontSize: 20,
                    color: Colors.white,
                    fontWeight: FontWeight.bold),
              ),
              Text(
                'Rs.199',
                style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffFF470B),
                    fontWeight: FontWeight.w400),
              ),
              Text('4.4/5'),
            ],
          ),
        )
      ],
    );
  }
}
