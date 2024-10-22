import 'package:ecommerce_app/views/checkoutPage.dart';
import 'package:ecommerce_app/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class MyCartPage extends StatefulWidget {
  final String? image;
  final String? title;
  final dynamic price; // Changed to dynamic

  const MyCartPage({
    super.key,
    this.image,
    this.title,
    this.price,
  });

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  int quantity = 1; // Initialize quantity

  @override
  Widget build(BuildContext context) {
    // Ensure price is formatted correctly
    String formattedPrice = widget.price != null
        ? (widget.price is int
            ? '\$${(widget.price as int).toString()}'
            : '\$${(widget.price as double).toStringAsFixed(2)}')
        : '\$0.00'; // Default value if price is null

    return Scaffold(
        appBar: AppBar(
          leading: IconButton(
            onPressed: () {
              Navigator.pop(context);
            },
            icon: const Icon(Icons.arrow_back),
          ),
          title: const Text(
            'My Cart',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w900,
            ),
          ),
        ),
        body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                itemCount: 1, // Assuming one item in cart for now
                itemBuilder: (BuildContext context, int index) {
                  return Container(
                    color: const Color(0xFFF1F4FB),
                    margin: const EdgeInsets.symmetric(
                        horizontal: 30, vertical: 10),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          width: 87,
                          height: 87,
                          margin: const EdgeInsets.all(10),
                          child: Image.network(
                            widget.image ?? 'https://via.placeholder.com/150',
                            fit: BoxFit.cover,
                          ),
                        ),
                        Expanded(
                          flex: 3,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(top: 20),
                                child: Text(
                                  widget.title ?? 'Product Title',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFF6342E8),
                                  ),
                                  overflow: TextOverflow.ellipsis,
                                  maxLines: 1,
                                ),
                              ),
                              const Padding(
                                padding: EdgeInsets.only(top: 8),
                                child: Text(
                                  'GEETA COLLECTION',
                                  style: TextStyle(
                                    fontSize: 9,
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFFA1A1A1),
                                  ),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.only(top: 8),
                                child: Row(
                                  children: [
                                    Text(
                                      formattedPrice,
                                      style: const TextStyle(
                                        fontSize: 18,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    const SizedBox(width: 2),
                                    const Text(
                                      'USD',
                                      style: TextStyle(
                                        fontSize: 14,
                                        color: Colors.black,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 110,
                          height: 146,
                          child: Column(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(top: 5, right: 10),
                                child: Align(
                                  alignment: Alignment.topRight,
                                  child: IconButton(
                                    onPressed: () {
                                      // Handle item removal
                                    },
                                    icon: const Icon(
                                        Icons.cancel_presentation_rounded),
                                  ),
                                ),
                              ),
                              const Spacer(),
                              Container(
                                color: const Color(0xFFD3D3D3),
                                width: 80,
                                height: 25,
                                margin: const EdgeInsets.only(bottom: 10),
                                child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceEvenly,
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        if (quantity > 1) {
                                          setState(() {
                                            quantity--; // Decrease quantity
                                          });
                                        }
                                      },
                                      icon: const Icon(Icons.remove),
                                      padding: EdgeInsets.zero,
                                      constraints: const BoxConstraints(),
                                    ),
                                    Text(
                                      quantity.toString(),
                                      style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                      ),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        setState(() {
                                          quantity++; // Increase quantity
                                        });
                                      },
                                      icon: const Icon(Icons.add),
                                      padding: EdgeInsets.zero,
                                      constraints: const BoxConstraints(),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: CustomButton(
                margin: EdgeInsets.only(bottom: 30),
                buttonText: "GO TO CHECKOUT",
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) => const CheckOutPage(),
                    ),
                  );
                },
              ),
            )
          ],
        ));
  }
}
