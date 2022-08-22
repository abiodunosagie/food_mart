import 'package:flutter/material.dart';
import 'package:food_application/constants/constants.dart';
import 'package:food_application/screens/food_details.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        height: MediaQuery.of(context).size.height,
        width: MediaQuery.of(context).size.width,
        color: kCustomGreenColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 100),
              child: Container(
                height: 300,
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('images/D F F (227).png'))),
              ),
            ),
            const SizedBox(height: 30),
            const Text('Fast delivery at \n your doorstep',
                style: kHeaderTextStyle),
            const SizedBox(height: 15),
            const Text('Home delivery and online reservation ',
                style: kSubTextStyle),
            const Text(
              'system for restaurant & care',
              style: kSubTextStyle,
            ),
            const Spacer(),
            Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.only(bottom: 20),
                child: TextButton(
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => FoodDetails()));
                  },
                  child: Container(
                    padding: const EdgeInsets.symmetric(
                        vertical: 25, horizontal: 120),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15),
                    ),
                    child: const Text(
                      "Let's Explore",
                      style: TextStyle(
                          color: Color(0xff459f2f),
                          fontSize: 25,
                          fontWeight: FontWeight.w600),
                    ),
                  ),
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
