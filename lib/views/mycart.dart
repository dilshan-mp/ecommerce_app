import 'package:flutter/material.dart';

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
      body: ListView.builder(
        itemCount: 1,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            color: const Color(0xFFF1F4FB),
            width: 354,
            height: 146,
            margin: const EdgeInsets.only(left: 30, right: 30),
            child: Row(
              children: [
                Container(
                  width: 87,
                  height: 77,
                  margin: const EdgeInsets.only(
                    left: 21,
                    top: 21,
                    bottom: 47,
                  ),
                  child: Image.network(
                    widget.image ??
                        'https://via.placeholder.com/150', // Using the passed image
                    fit: BoxFit.cover,
                  ),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.only(top: 30, left: 13),
                      child: Expanded(
                        child: Text(
                          widget.title ??
                              'Product Title', // Using the passed title
                          style: const TextStyle(
                            fontSize: 14,
                            fontWeight: FontWeight.w900,
                            color: Color(0xFF6342E8),
                          ),
                          overflow: TextOverflow.ellipsis,
                          maxLines: 1,
                        ),
                      ),
                    ),
                    const Padding(
                      padding: EdgeInsets.only(top: 8, left: 13),
                      child: Text(
                        'GEETA COLLECTION',
                        style: TextStyle(
                          fontSize: 9,
                          fontWeight: FontWeight.w900,
                          color: Color(0xFFA1A1A1),
                        ),
                      ),
                    ),
                    Row(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(left: 10),
                          child: Text(
                            formattedPrice,
                            style: const TextStyle(
                              fontSize: 18,
                              color: Colors.black,
                              fontWeight: FontWeight.w900,
                            ),
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
                        )
                      ],
                    ),
                  ],
                ),
                SizedBox(
                  width: 115,
                  height: 146,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(
                          top: 5,
                          left: 60,
                        ),
                        child: IconButton(
                          onPressed: () {
                            // Handle item removal
                          },
                          icon: const Icon(Icons.cancel_presentation_rounded),
                        ),
                      ),
                      Container(
                        color: const Color(0xFFD3D3D3),
                        width: 82,
                        height: 25,
                        margin: const EdgeInsets.only(
                          top: 68,
                        ),
                        child: Row(
                          children: [
                            SizedBox(
                              width: 27.33,
                              height: 25,
                              child: IconButton(
                                onPressed: () {
                                  if (quantity > 1) {
                                    setState(() {
                                      quantity--; // Decrease quantity
                                    });
                                  }
                                },
                                icon: const Icon(Icons.remove),
                                padding: EdgeInsets.zero,
                              ),
                            ),
                            SizedBox(
                              width: 27.33,
                              height: 25,
                              child: Center(
                                child: Text(
                                  quantity.toString(),
                                  style: const TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w900,
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(
                              width: 27.33,
                              height: 25,
                              child: IconButton(
                                onPressed: () {
                                  setState(() {
                                    quantity++; // Increase quantity
                                  });
                                },
                                icon: const Icon(Icons.add),
                                padding: EdgeInsets.zero,
                              ),
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
    );
  }
}
