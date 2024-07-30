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
          child: TextField(
            decoration: InputDecoration(
                enabledBorder: InputBorder.none,
                focusedBorder: InputBorder.none,
                prefixIcon: IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.search,
                      color: Colors.black,
                    ))),
          ),
        ),
        actions: [Image.asset('assets/icons/person.png')],
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                CustomSquareCard(),
                CustomSquareCard(),
              ],
            ),
            const SizedBox(height: 26),
            Container(
              height: 138,
              width: 358,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12),
                color: Color(0xff333333),
              ),
              child: Padding(
                padding: const EdgeInsets.only(
                    left: 25, right: 58, top: 33, bottom: 33),
                child: Text(
                  'Use code \niLovemyfood \nto get 10% off on your orders',
                  style: GoogleFonts.lato(
                    textStyle: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w500,
                        fontSize: 17),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 35),
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Text(
                  'Foods',
                  style: TextStyle(
                    fontSize: 17,
                    color: AppColors.kPrimaryColor,
                    decoration: TextDecoration.underline,
                    decorationColor: AppColors.kPrimaryColor,
                    decorationThickness: 3,
                  ),
                ),
                Text(
                  'Drinks',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xff9A9A9D),
                  ),
                ),
                Text(
                  'Snacks',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xff9A9A9D),
                  ),
                ),
                Text(
                  'Sauce',
                  style: TextStyle(
                    fontSize: 17,
                    color: Color(0xff9A9A9D),
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 50,
            ),
            SizedBox(
              height: 300,
              child: ListView.builder(
                itemCount: 20,
                itemBuilder: (context, index) {
                  return CustomCardProduct(
                      image: 'assets/images/spaghetti.png');
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
      ),
    );
  }
}
