import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:food_application/constants/constants.dart';

class FoodDetails extends StatelessWidget {
  const FoodDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kCustomGreenColor,
      body: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          children: [
            //Notifications and heart section
            Padding(
              padding:
                  const EdgeInsets.symmetric(horizontal: 12.0, vertical: 60.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: kNotificationBackgroundColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: GestureDetector(
                      onTap: () {
                        Navigator.pop(context);
                      },
                      child: const Icon(Icons.arrow_back_ios_new,
                          color: Colors.white, size: 26.0),
                    ),
                  ),
                  const Text(
                    'Food Details',
                    style: TextStyle(
                        fontSize: 25,
                        fontWeight: FontWeight.w500,
                        color: Colors.white),
                  ),
                  Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                        color: kNotificationBackgroundColor,
                        borderRadius: BorderRadius.circular(10)),
                    child: const Icon(CupertinoIcons.suit_heart,
                        color: Colors.white, size: 26.0),
                  ),
                ],
              ),
            ),
            //The white container widget
            Positioned(
              bottom: 0,
              top: 270,
              child: Container(
                width: MediaQuery.of(context).size.width,
                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(
                    topRight: Radius.circular(20),
                    topLeft: Radius.circular(20),
                  ),
                ),
                //Food Details Column
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const SizedBox(height: 150),
                    //Food name row
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 13.0, vertical: 10.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: const [
                              //Food Name
                              Text(
                                'Avocado Salad',
                                style: TextStyle(
                                    fontSize: 35,
                                    color: Colors.black,
                                    fontWeight: FontWeight.w600),
                              ),
                              SizedBox(height: 5),
                              //Food Price
                              Text(
                                '\$ 15.00',
                                style: kPriceColorRowStyle1,
                              ),
                            ],
                          ),
                          //Button
                          ElevatedButton(
                            onPressed: () {},
                            style: ElevatedButton.styleFrom(
                                primary: kCustomGreenColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(21))),
                            child: const Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text(
                                '- 1 +',
                                style: TextStyle(
                                    fontSize: 30,
                                    color: Colors.white,
                                    fontWeight: FontWeight.w600),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    // Star Row section
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          // 3 rows within this row
                          // 1 -- Star row
                          Row(
                            children: const [
                              Icon(
                                Icons.star,
                                color: Color(0xfffbbe24),
                                size: 35,
                              ),
                              Text(
                                '4.5',
                                style: kStarTextStyle,
                              ),
                            ],
                          ),
                          // 2 -- Blood bank row
                          Row(
                            children: const [
                              Icon(
                                Icons.bloodtype_sharp,
                                color: Colors.red,
                                size: 35,
                              ),
                              Text(
                                '100 Kcal',
                                style: kStarTextStyle,
                              ),
                            ],
                          ),
                          // 3 -- Time Row
                          Row(
                            children: const [
                              Icon(Icons.access_time_filled_outlined,
                                  color: Colors.orange, size: 35),
                              Text(
                                '20min',
                                style: kStarTextStyle,
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    //About Food Section
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 15.0),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            'About Food',
                            style: TextStyle(
                                fontSize: 30,
                                color: Colors.black,
                                fontWeight: FontWeight.w600),
                          ),
                          SizedBox(height: 5),
                          Text(
                            '“From time to time she tasted his food. The sausage was delicious, seasoned with ginger and spices. His sides were all buttery and rich- the mushrooms sautéed in butter, the tattie scones cooked in butter.',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 3,
                            style: TextStyle(
                                fontSize: 20,
                                fontWeight: FontWeight.w500,
                                color: Colors.black38),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 15),
                    // Add to cart button
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          child: ElevatedButton(
                            style: ElevatedButton.styleFrom(
                                primary: kCustomGreenColor,
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(15))),
                            onPressed: () {},
                            child: const Padding(
                              padding: EdgeInsets.symmetric(
                                  horizontal: 105.0, vertical: 23.0),
                              child: Text(
                                'Add to cart',
                                style: TextStyle(
                                    fontSize: 26,
                                    fontWeight: FontWeight.w500,
                                    color: Colors.white),
                              ),
                            ),
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
            ),
            //Food Image
            Positioned(
              top: 90,
              left: 30,
              width: 360,
              height: 360,
              child: Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage('images/D F F (227).png'),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
