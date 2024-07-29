import 'package:flutter/material.dart';
import 'package:food_app/constants/app_colors.dart';
import 'package:food_app/widgets/custom_card_product.dart';
import 'package:google_fonts/google_fonts.dart';

import '../widgets/custom_square_card.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image.asset('assets/icons/drawer.png'),
        title: Container(
          height: 35,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(50),
            color: Colors.grey[300],
          ),
          child: const Row(
            children: [
              SizedBox(
                width: 10,
              ),
              Icon(Icons.search),
              SizedBox(
                width: 10,
              ),
              Text(
                'Search',
                style: TextStyle(fontSize: 17),
              ),
            ],
          ),
        ),
        actions: [Image.asset('assets/icons/person.png')],
      ),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              CustomSquareCard(),
              CustomSquareCard(),
            ],
          ),
          const SizedBox(height: 10),
          Container(
            height: 138,
            width: 358,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              color: Color(0xff333333),
            ),
            child: Padding(
              padding:
                  EdgeInsets.only(left: 10, right: 10, top: 10, bottom: 10),
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  'Use code \niLovemyfood \nto get 10% off on your orders',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(color: Colors.red, letterSpacing: .5),
                  ),
                ),
              ),
            ),
          ),
          const SizedBox(height: 10),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Foods',
                style: TextStyle(
                  fontSize: 17,
                  color: AppColors.kPrimaryColor,
                  decoration: TextDecoration.underline,
                  decorationColor: AppColors.kPrimaryColor,
                ),
              ),
              Text(
                'Drinks',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Text(
                'Snacks',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
              Text(
                'Sauce',
                style: TextStyle(
                  fontSize: 17,
                  color: Colors.black,
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 120,
          ),

          /// ListView with shrinkWrap ,  scrollDirection: Axis.horizontal
          // SizedBox(
          //   height: 300,
          //   child: ListView(
          //     scrollDirection: Axis.horizontal,
          //     shrinkWrap: true,
          //     children: [
          //       Row(
          //         mainAxisAlignment: MainAxisAlignment.spaceBetween,
          //         children: [
          //           CustomCardProduct(image: 'assets/images/spaghetti.png'),
          //           const SizedBox(
          //             width: 15,
          //           ),
          //           CustomCardProduct(image: 'assets/images/spaghetti.png'),
          //           const SizedBox(
          //             width: 15,
          //           ),
          //           CustomCardProduct(image: 'assets/images/spaghetti.png'),
          //         ],
          //       )
          //     ],
          //   ),
          // ),

          /// ListView.builder , itemCount , itemBuilder
          SizedBox(
            height: 300,
            child: ListView.builder(
              itemCount: 3,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomCardProduct(image: 'assets/images/spaghetti.png'),
                    const SizedBox(
                      width: 15,
                    ),
                  ],
                );
              },
              scrollDirection: Axis.horizontal,
              shrinkWrap: true,
            ),
          ),
          const SizedBox(
            height: 10,
          ),
        ],
      ),
    );
  }
}
