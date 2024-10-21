import 'package:flutter/cupertino.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class DetailsPage extends StatefulWidget {
  const DetailsPage({super.key});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFF1F4FB),
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Padding(
                padding: const EdgeInsets.only(top: 78, left: 30),
                child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.arrow_back),
                ),
              ),
              Container(
                width: 46,
                height: 46,
                margin: const EdgeInsets.only(
                  top: 78,
                  right: 30,
                ),
                decoration: const BoxDecoration(
                    color: Color(
                      0xFFFFFFFF,
                    ),
                    borderRadius: BorderRadius.all(Radius.circular(360))),
                child: IconButton(
                    onPressed: () {},
                    icon: const Icon(Icons.favorite_border_outlined)),
              )
            ],
          ),
          Container(
            width: 158,
            height: 225,
            margin: const EdgeInsets.only(
              top: 69,
              left: 115,
              right: 115,
            ),
            decoration: BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.circular(59),
            ),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(59), // Matches container's borderRadius
              child: Image.network(
                'https://buffer.com/library/content/images/size/w1200/2023/10/free-images.jpg',
                fit:
                    BoxFit.cover, // Ensures the image fits within the container
              ),
            ),
          ),
          Container(
            width: 414,
            height: 629,
            margin: const EdgeInsets.only(top: 319),
            decoration: const BoxDecoration(
              color: Colors.amber,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                Container(
                  color: Colors.blue,
                  width: 371,
                  height: 71.1,
                  margin: const EdgeInsets.only(
                    top: 25,
                  ),
                  child: Row(
                    children: [
                      Container(
                        color: Colors.red,
                        width: 228,
                        height: 71.1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Geeta Mens'),
                            Text(
                              'Purple Hoodie',
                              style: TextStyle(
                                fontSize: 24,
                                fontWeight: FontWeight.w900,
                                height: 1,
                              ),
                            ),
                            Container(
                              color: Colors.white,
                              width: 228,
                              height: 27,
                              child: Image.asset(
                                'assets/images/Rating.png',
                                alignment: Alignment.topLeft,
                              ),
                            )
                          ],
                        ),
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      Container(
                        color: Colors.red,
                        width: 98,
                        height: 71.1,
                        child: const Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(
                              '\$48',
                              style: TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w900),
                            ),
                            SizedBox(
                              width: 1,
                            ),
                            Text(
                              'USD',
                              style: TextStyle(
                                fontSize: 14,
                                fontWeight: FontWeight.w400,
                              ),
                            )
                          ],
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.red,
                  width: 349,
                  height: 46,
                  margin: const EdgeInsets.only(top: 28.9),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Colors.white,
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(
                                  0.5), // Shadow color with some opacity
                              spreadRadius:
                                  2, // How wide the shadow will spread
                              blurRadius: 5, // The blur effect for the shadow
                              offset: Offset(
                                  0, 3), // The position of the shadow (x, y)
                            ),
                          ],
                          borderRadius: BorderRadius.circular(
                              5), // Optional: if you want rounded corners
                        ),
                        width: 90,
                        height: 25,
                        child: Row(
                          children: [
                            Container(
                              //color: Colors.amber,
                              width: 30,
                              height: 25,
                              child: Center(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: Icon(Icons.remove),
                                  padding: EdgeInsets.zero,
                                ),
                              ),
                            ),
                            Container(
                              //color: Colors.amber,
                              width: 30,
                              height: 25,
                              child: const Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                            Container(
                              //color: Colors.amber,
                              width: 30,
                              height: 25,
                              child: Center(
                                child: IconButton(
                                  onPressed: () {},
                                  icon: const Icon(Icons.add),
                                  padding: EdgeInsets.zero,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        width: 46,
                        height: 46,
                        decoration: BoxDecoration(
                          color: Color(0xFFF1F4FB),
                          borderRadius: BorderRadius.circular(360),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: Icon(Icons.upload),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  color: Colors.red,
                  width: 349,
                  height: 103,
                  margin: const EdgeInsets.only(top: 26),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        color: Colors.blue,
                        width: 75,
                        height: 24,
                        child: const Text(
                          "DESCRIPTION",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                              height: 2.4),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          color: Colors.pink,
                          width: 348,
                          height: 78,
                          child: const Text(
                            'Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industrys standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book...detail',
                            style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                        ),
                      ),
                      Container()
                    ],
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
