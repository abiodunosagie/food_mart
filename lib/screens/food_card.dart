import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_application/constants/constants.dart';

class FoodCard extends StatelessWidget {
  const FoodCard({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Column(
        children: [
          Container(
            height: 500,
            decoration: BoxDecoration(
              color: kCardBackgroundColor,
              borderRadius: BorderRadius.circular(15),
            ),
            child: Row(
              children: [
                Container(
                  height: 200,
                  width: 200,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage('images/D F F (227).png'),
                    ),
                  ),
                  child: Column(
                    children: [
                      Text(
                        'Avocado Salad',
                        style: TextStyle(
                            fontSize: 25,
                            color: Colors.black,
                            fontWeight: FontWeight.w500),
                      ),
                    ],
                  ),
                ),
                Icon(
                  CupertinoIcons.suit_heart,
                  color: Colors.black45,
                  size: 35,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
