import 'package:flutter/material.dart';
import 'package:food_app/constants/app_colors.dart';
import 'package:food_app/custom_widget/custom_card_product.dart';
import 'package:google_fonts/google_fonts.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: const Icon(Icons.menu),
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
        actions: [
          IconButton(onPressed: () {}, icon: const Icon(Icons.notifications)),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          children: [
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.kPrimaryColor,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '50%',
                              style: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'off',
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.kWhite,
                              ),
                            ),
                          ],
                        ),
                        Text('on all sushi orders*'),
                        Text('Valid till 25 Dec,2023'),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            '*Terms and conditions applied',
                            style:
                                TextStyle(color: AppColors.kWhite, fontSize: 7),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(12),
                    color: AppColors.kPrimaryColor,
                  ),
                  child: const Padding(
                    padding: EdgeInsets.only(
                        left: 10, right: 10, top: 10, bottom: 10),
                    child: Column(
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(
                              '50%',
                              style: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              'off',
                              style: TextStyle(
                                fontSize: 16,
                                color: AppColors.kWhite,
                              ),
                            ),
                          ],
                        ),
                        Text('on all sushi orders*'),
                        Text('Valid till 25 Dec,2023'),
                        Align(
                          alignment: Alignment.bottomRight,
                          child: Text(
                            '*Terms and conditions applied',
                            style:
                                TextStyle(color: AppColors.kWhite, fontSize: 7),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            Container(
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
                      textStyle:
                          TextStyle(color: Colors.red, letterSpacing: .5),
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
      ),
      bottomNavigationBar: BottomNavigationBar(
        items: [
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/home.png'), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/cart.png'), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/favarite.png'), label: ''),
          BottomNavigationBarItem(
              icon: Image.asset('assets/icons/timer.png'), label: ''),
        ],
      ),
    );
  }
}
