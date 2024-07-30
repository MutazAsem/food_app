import 'package:flutter/material.dart';

class CustomCardProduct extends StatelessWidget {
  final String image;
  const CustomCardProduct({super.key, required this.image});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 30),
      child: Stack(
        clipBehavior: Clip.none,
        children: [
          Positioned(
            top: 40,
            child: Card(
              elevation: 5,
              shape: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              child: Container(
                width: 200,
                height: 241.4,
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(30),
                ),
              ),
            ),
          ),
          Positioned(
            bottom: 70,
            left: -10,
            child: Image.asset(
              image,
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(top: 130.0, left: 40),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Spicy Salmon',
                  style: TextStyle(
                    fontSize: 20,
                    color: Colors.black,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Rs.199',
                  style: TextStyle(
                    fontSize: 20,
                    color: Color(0xffFF470B),
                    fontWeight: FontWeight.w400,
                  ),
                ),
                Text('4.4/5'),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
