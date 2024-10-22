import 'package:ecommerce_app/statemanagement/provider/addCart_provider.dart';
import 'package:ecommerce_app/views/Popular.dart';
import 'package:ecommerce_app/views/mycart.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:provider/provider.dart';

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
      appBar: AppBar(
        leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: Icon(Icons.arrow_back)),
        backgroundColor: Color(0xFFF1F4FB),
      ),
      body: Stack(
        children: [
          Container(
            color: const Color(0xFFF1F4FB),
          ),
          Padding(
            padding: const EdgeInsets.only(left: 320, top: 10),
            child: Container(
              width: 46,
              height: 46,
              decoration: const BoxDecoration(
                  color: Color(
                    0xFFFFFFFF,
                  ),
                  borderRadius: BorderRadius.all(Radius.circular(360))),
              child: IconButton(
                  onPressed: () {},
                  icon: const Icon(Icons.favorite_border_outlined)),
            ),
          ),
          Container(
            width: 158,
            height: 225,
            margin: const EdgeInsets.only(
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
                fit: BoxFit.fill, // Ensures the image fits within the container
              ),
            ),
          ),
          SingleChildScrollView(
            child: Container(
              width: 414,
              height: 629,
              margin: const EdgeInsets.only(top: 250),
              decoration: const BoxDecoration(
                color: Colors.white,
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
                    height: 160,
                    margin: const EdgeInsets.only(
                      top: 25,
                    ),
                    child: Row(
                      children: [
                        Container(
                          //color: Colors.red,
                          width: 228,
                          height: 160,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(widget.category ?? "no category"),
                              Container(
                                //color: Colors.amber,
                                width: 228,
                                height: 100,
                                child: Text(
                                  widget.title ?? 'no title',
                                  style: const TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900),
                                ),
                              ),
                              Container(
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
                          width: 20,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            Text(
                              '\$${priceValue}',
                              style: const TextStyle(
                                  fontSize: 24, fontWeight: FontWeight.w900),
                            ),
                            const Text(
                              'USD',
                              style: TextStyle(
                                fontSize: 12,
                                fontWeight: FontWeight.w600,
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                    //color: Colors.red,
                    width: 349,
                    height: 46,
                    margin: const EdgeInsets.only(top: 5),
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
                  Padding(
                    padding: const EdgeInsets.only(right: 200),
                    child: Container(
                      //color: Colors.amber,
                      width: 150,
                      height: 25,
                      child: const Text(
                        "DESCRIPTION",
                        style: TextStyle(
                            fontSize: 18, fontWeight: FontWeight.w900),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 20, top: 10),
                    child: Flexible(
                        child: Text(widget.description ?? "no description")),
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
                        Provider.of<AddtoCartProvider>(context, listen: false)
                            .addToCart(
                                widget.title, widget.price, widget.image);
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => MyCartPage(),
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
            ),
          )
        ],
      ),
    );
  }
}
