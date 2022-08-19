import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_application/constants/constants.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Container(
          height: MediaQuery.of(context).size.height,
          width: MediaQuery.of(context).size.width,
          color: kCustomGreenColor,
          child: Column(
            children: [
              //App Bar Row
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 10.0, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    //back icon button
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: Container(
                        height: 50,
                        width: 50,
                        decoration: BoxDecoration(
                          color: kNotificationBackgroundColor,
                          borderRadius: BorderRadius.circular(15),
                        ),
                        child: const Icon(Icons.arrow_back_ios,
                            color: Colors.white),
                      ),
                    ),
                    // Text food details
                    const Text(
                      'Food Details',
                      style: kFoodDetailsHeadingTextColor,
                    ),
                    // love emoji box
                    Container(
                      height: 50,
                      width: 50,
                      decoration: BoxDecoration(
                        color: kNotificationBackgroundColor,
                        borderRadius: BorderRadius.circular(15),
                      ),
                      child: const Icon(
                        CupertinoIcons.suit_heart,
                        color: Colors.white,
                      ),
                    ),
                  ],
                ),
              ),
              //White curved background
              Expanded(
                child: Stack(
                  alignment: Alignment.bottomCenter,
                  children: [
                    // White Background curved container section
                    Container(
                      width: MediaQuery.of(context).size.width,
                      height: 600,
                      decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(20),
                          topRight: Radius.circular(20),
                        ),
                      ),
                    ),
                    //Food Image
                    Positioned(
                      bottom: 340,
                      left: 7,
                      child: Container(
                        height: 400,
                        width: 400,
                        decoration: const BoxDecoration(
                            image: DecorationImage(
                                image: AssetImage('images/D F F (136).png'))),
                      ),
                    ),
                    //Food details
                    Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(
                              top: 300.0, left: 10.0, right: 10.0),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              //Food header text
                              Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: const [
                                  //Food Title
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      'Avocado Salad',
                                      style: TextStyle(
                                          fontSize: 35.0,
                                          color: Colors.black,
                                          fontWeight: FontWeight.w700),
                                    ),
                                  ),
                                  SizedBox(height: 7),
                                  //Food Price
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                      '\$15.00',
                                      style: TextStyle(
                                          fontSize: 35,
                                          fontWeight: FontWeight.w600,
                                          color: kCustomGreenColor),
                                    ),
                                  ),
                                ],
                              ),
                              //Add button
                              GestureDetector(
                                onTap: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      horizontal: 25.0, vertical: 13.0),
                                  decoration: BoxDecoration(
                                      color: kCustomGreenColor,
                                      borderRadius: BorderRadius.circular(20)),
                                  child: const Text(
                                    'Add',
                                    style: TextStyle(
                                        fontWeight: FontWeight.w600,
                                        fontSize: 26.0,
                                        color: Colors.white),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 10),
                        //Food Features
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            //Star row
                            Row(
                              children: const [
                                Icon(
                                  Icons.star,
                                  color: Colors.yellow,
                                  size: 35.0,
                                ),
                                Text('4.5', style: kStarTextStyle),
                              ],
                            ),
                            //Blood row
                            Row(
                              children: const [
                                Icon(Icons.bloodtype,
                                    color: Colors.red, size: 35),
                                Text(
                                  '100 Kcal',
                                  style: kStarTextStyle,
                                ),
                              ],
                            ),
                            // Time row
                            Row(
                              children: const [
                                Icon(
                                  CupertinoIcons.time_solid,
                                  color: Colors.yellow,
                                  size: 35,
                                ),
                                Text(
                                  '20min',
                                  style: kStarTextStyle,
                                ),
                              ],
                            ),
                          ],
                        ),
                        //About text
                        const SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10.0),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'About food',
                                style: TextStyle(
                                    fontSize: 30,
                                    fontWeight: FontWeight.w600,
                                    color: Colors.black),
                              ),
                              const Padding(
                                padding: EdgeInsets.symmetric(vertical: 10.0),
                                child: Text(
                                  'Like in my sample image, below, I want to increment'
                                  'or decrement quantity upon button click for single',
                                  style: TextStyle(
                                      fontSize: 20.0,
                                      fontWeight: FontWeight.w400,
                                      color: Colors.black38),
                                ),
                              ),
                              TextButton(
                                onPressed: () {
                                  Navigator.pop(context);
                                },
                                child: Container(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 23, horizontal: 120),
                                  decoration: BoxDecoration(
                                    color: kCustomGreenColor,
                                    borderRadius: BorderRadius.circular(15),
                                  ),
                                  child: const Text(
                                    "Add to cart",
                                    style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 25,
                                        fontWeight: FontWeight.w600),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
