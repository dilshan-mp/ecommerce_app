import 'package:ecommerce_app/views/mycart.dart';
import 'package:flutter/material.dart';

class DetailsPage extends StatefulWidget {
  final String? title;
  final dynamic price;
  final String? description;
  final String? image;
  final String? category;

  const DetailsPage(
      {super.key,
      this.title,
      this.price,
      this.description,
      this.image,
      this.category});

  @override
  State<DetailsPage> createState() => _DetailsPageState();
}

class _DetailsPageState extends State<DetailsPage> {
  @override
  Widget build(BuildContext context) {
    double priceValue = (widget.price is int)
        ? (widget.price as int).toDouble()
        : (widget.price ?? 0);
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
                  onPressed: () {
                    Navigator.pop(context);
                  },
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
              //color: Colors.amber,
              borderRadius: BorderRadius.circular(59),
            ),
            child: ClipRRect(
              borderRadius:
                  BorderRadius.circular(59), // Matches container's borderRadius
              child: Image.network(
                widget.image ?? 'https://via.placeholder.com/150',
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
              //color: Colors.amber,
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                Container(
                  //color: Colors.blue,
                  width: 371,
                  height: 71.1,
                  margin: const EdgeInsets.only(
                    top: 25,
                  ),
                  child: Row(
                    children: [
                      SizedBox(
                        //color: Colors.red,
                        width: 228,
                        height: 71.1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.category ?? "no category"),
                            Flexible(
                              child: Text(
                                widget.title ?? "No title",
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                  height: 1,
                                ),
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            SizedBox(
                              //color: Colors.white,
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
                      const SizedBox(
                        width: 45,
                      ),
                      SizedBox(
                        width: 98,
                        height: 71.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                '\$$priceValue',
                                style: const TextStyle(
                                  fontSize: 24,
                                  fontWeight: FontWeight.w900,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(
                              width: 1,
                            ),
                            const Text(
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
                  //color: Colors.red,
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
                              offset: const Offset(
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
                            SizedBox(
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
                            const SizedBox(
                              //color: Colors.amber,
                              width: 30,
                              height: 25,
                              child: Center(
                                child: Text(
                                  '1',
                                  style: TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                            ),
                            SizedBox(
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
                          color: const Color.fromARGB(255, 224, 226, 231),
                          borderRadius: BorderRadius.circular(360),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(Icons.upload),
                        ),
                      )
                    ],
                  ),
                ),
                Container(
                  //color: Colors.red,
                  width: 349,
                  height: 103,
                  margin: const EdgeInsets.only(top: 26),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        //color: Colors.blue,
                        width: 75,
                        height: 24,
                        child: Text(
                          "DESCRIPTION",
                          style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.w800,
                              height: 2.4),
                        ),
                      ),
                      Expanded(
                        child: SizedBox(
                          //color: Colors.pink,
                          width: 348,
                          height: 78,
                          child: Text(
                            widget.description ?? 'no description',
                            style: const TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w500,
                                height: 1.5),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  //color: Colors.red,
                  width: 280,
                  height: 77,
                  margin: const EdgeInsets.only(
                    top: 30,
                    right: 104,
                    left: 30,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
                        //color: Colors.blue,
                        width: 75,
                        height: 24,
                        child: Center(
                          child: Text(
                            'SELECT SIZE',
                            style: TextStyle(
                                fontWeight: FontWeight.w800, fontSize: 10),
                          ),
                        ),
                      ),
                      const SizedBox(
                        height: 5,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: 48,
                            height: 48,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(6),
                              ),
                              color: Colors.blue,
                            ),
                            child: const Center(
                              child: Text(
                                'S',
                                style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(6),
                              ),
                              color: Color(0xFFF1F4FB),
                            ),
                            child: const Center(
                              child: Text(
                                'M',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontWeight: FontWeight.w400,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(6),
                              ),
                              color: Color(0xFFF1F4FB),
                            ),
                            child: const Center(
                              child: Text(
                                'L',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(6),
                              ),
                              color: Color(0xFFF1F4FB),
                            ),
                            child: const Center(
                              child: Text(
                                'XL',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 48,
                            height: 48,
                            decoration: const BoxDecoration(
                              borderRadius: BorderRadius.all(
                                Radius.circular(6),
                              ),
                              color: Color(0xFFF1F4FB),
                            ),
                            child: const Center(
                              child: Text(
                                'XXL',
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 14,
                                ),
                              ),
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                Container(
                  width: 354,
                  height: 54,
                  margin: const EdgeInsets.only(top: 45, left: 30, right: 30),
                  child: ElevatedButton(
                    onPressed: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) => MyCartPage(
                            image: widget.image,
                            title: widget.title,
                            price: widget.price,
                          ),
                        ),
                      );
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFF6342E8),
                      elevation: 0,
                    ),
                    child: const Text(
                      'ADD TO CART',
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
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
