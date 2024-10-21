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
                          children: [Text('Geeta Mens')],
                        ),
                      ),
                      SizedBox(
                        width: 45,
                      ),
                      Container(
                        color: Colors.red,
                        width: 98,
                        height: 71.1,
                      )
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
