import 'package:ecommerce_app/statemanagement/provider/cart_provider.dart';
import 'package:ecommerce_app/views/mycart.dart';
import 'package:ecommerce_app/widgets/customButton.dart';
import 'package:flutter/material.dart';
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

    final cartModel = Provider.of<CartModel>(context);
    cartModel.setPrice(priceValue); // Update the price when the page loads

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
              borderRadius: BorderRadius.circular(59),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(59),
              child: Image.network(
                widget.image ?? 'https://via.placeholder.com/150',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Container(
            width: 414,
            height: 629,
            margin: const EdgeInsets.only(top: 319),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(40),
                topRight: Radius.circular(40),
              ),
            ),
            child: Column(
              children: [
                Container(
                  width: 371,
                  height: 71.1,
                  margin: const EdgeInsets.only(top: 25),
                  child: Row(
                    children: [
                      SizedBox(
                        width: 228,
                        height: 71.1,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.category ?? "No category"),
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
                      const SizedBox(width: 45),
                      SizedBox(
                        width: 98,
                        height: 71.1,
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                              child: Text(
                                '\$${cartModel.totalPrice.toStringAsFixed(2)}',
                                style: const TextStyle(
                                  fontSize: 17,
                                  fontWeight: FontWeight.w900,
                                ),
                                maxLines: 2,
                                overflow: TextOverflow.ellipsis,
                              ),
                            ),
                            const SizedBox(width: 1),
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
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                          borderRadius: BorderRadius.circular(5),
                        ),
                        width: 110,
                        height: 25,
                        child: Flexible(
                          child: Row(
                            children: [
                              IconButton(
                                onPressed: () {
                                  cartModel.decreasePrice(priceValue);
                                },
                                icon: const Icon(Icons.remove),
                                padding: EdgeInsets.zero,
                              ),
                              SizedBox(
                                width: 30,
                                height: 25,
                                child: Center(
                                  child: Text(
                                    '${cartModel.quantity}',
                                    style: const TextStyle(
                                      fontSize: 18,
                                      fontWeight: FontWeight.w900,
                                    ),
                                  ),
                                ),
                              ),
                              IconButton(
                                onPressed: () {
                                  cartModel.increasePrice(priceValue);
                                },
                                icon: const Icon(Icons.add),
                                padding: EdgeInsets.zero,
                              ),
                            ],
                          ),
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
                  width: 349,
                  height: 103,
                  margin: const EdgeInsets.only(top: 26),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const SizedBox(
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
                          width: 348,
                          height: 78,
                          child: Text(
                            widget.description ?? 'No description',
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
                CustomButton(
                  buttonText: 'ADD TO CART',
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) => MyCartPage(
                          image: widget.image,
                          price: cartModel.totalPrice,
                          title: widget.title,
                        ),
                      ),
                    );
                  },
                  margin: const EdgeInsets.only(top: 45),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
