import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_application/constants/constants.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xfff7f7f7),
      body: Column(
        children: [
          Expanded(
            child: Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 20.0, vertical: 10.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  // Row for -- Image and Love icon
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Image.asset('images/D F F (136).png')),
                      const Icon(
                        CupertinoIcons.suit_heart,
                        color: Colors.black,
                        size: 35,
                      ),
                    ],
                  ),
                  // -- Food Name
                  const Text(
                    'Avocado Salad',
                    style: TextStyle(
                        fontSize: 45.0,
                        fontWeight: FontWeight.w700,
                        color: Colors.black),
                  ),
                  // -- Row of time and rating

                  Row(
                    children: [
                      Text(
                        '20min',
                        style: kTimeColorRowStyle,
                      ),
                      // An expanded widget to fill the remaining space
                      // between these elements of text and row below.
                      Expanded(child: Container()),
                      //Icon and text row inside a row
                      Row(
                        children: [
                          Icon(
                            Icons.star,
                            color: Color(0xfffbbf21),
                            size: 40,
                          ),
                          Text(
                            '4.5',
                            style: kTimeColorRowStyle,
                          ),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 20),

                  // -- Row Price and buy button
                  Column(
                    children: [
                      Row(
                        children: [
                          Text(
                            '\$15.00',
                            style: kPriceColorRowStyle,
                          ),
                        ],
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Container(
                            width: 80,
                            height: 80,
                            decoration: BoxDecoration(
                                borderRadius: BorderRadius.only(
                                    topLeft: Radius.circular(40),
                                    topRight: Radius.circular(0),
                                    bottomLeft: Radius.circular(0),
                                    bottomRight: Radius.circular(40)),
                                color: kCustomGreenColor),
                            child: Icon(
                              Icons.add,
                              color: Colors.white,
                              size: 60,
                            ),
                          )
                        ],
                      )
                    ],
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
