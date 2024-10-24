import 'package:ecommerce_app/statemanagement/provider/addCart_provider.dart';
import 'package:ecommerce_app/views/checkoutPage.dart';
import 'package:ecommerce_app/widgets/customButton.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

class MyCartPage extends StatefulWidget {
  const MyCartPage({Key? key}) : super(key: key);

  @override
  State<MyCartPage> createState() => _MyCartPageState();
}

class _MyCartPageState extends State<MyCartPage> {
  @override
  Widget build(BuildContext context) {
    final cartProvider = Provider.of<AddtoCartProvider>(context);
    final cartItems = cartProvider.cartItem;

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
              itemCount: cartItems.length,
              itemBuilder: (BuildContext context, int index) {
                final item = cartItems[index];
                int quantity =
                    item.quantity; // Assuming quantity is stored in the item
                String formattedPrice = item.price != null
                    ? '\$${(item.price * quantity).toStringAsFixed(2)}'
                    : '\$0.00';

                return Container(
                  color: const Color(0xFFF1F4FB),
                  margin:
                      const EdgeInsets.symmetric(horizontal: 30, vertical: 10),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        width: 87,
                        height: 87,
                        margin: const EdgeInsets.all(10),
                        child: Image.network(
                          item.image ?? 'https://via.placeholder.com/150',
                          fit: BoxFit.fill,
                        ),
                      ),
                      Expanded(
                        flex: 3,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Padding(
                              padding: const EdgeInsets.only(top: 20),
                              child: Flexible(
                                child: Text(
                                  item.title ?? 'Product Title',
                                  style: const TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.w900,
                                    color: Color(0xFF6342E8),
                                  ),
                                ),
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
                              padding: const EdgeInsets.only(top: 5, right: 10),
                              child: Align(
                                alignment: Alignment.topRight,
                                child: IconButton(
                                  onPressed: () {
                                    cartProvider.removeCartItem(index);
                                    // You can call a method to update the state if needed
                                    setState(() {});
                                  },
                                  icon: const Icon(
                                      Icons.cancel_presentation_rounded),
                                ),
                              ),
                            ),
                            const Spacer(),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: Colors.white,
                                boxShadow: [
                                  BoxShadow(
                                    color: Colors.grey.withOpacity(0.5),
                                    spreadRadius: 1,
                                    blurRadius: 5,
                                    offset: const Offset(0, 3),
                                  ),
                                ],
                              ),
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
                                          item.quantity =
                                              quantity; // Update the item's quantity
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
                                        item.quantity =
                                            quantity; // Update the item's quantity
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
              icon: const Icon(
                Icons.exit_to_app,
                color: Colors.white,
              ),
              margin: const EdgeInsets.only(bottom: 30),
              buttonText: "GO TO CHECKOUT",
              totalPrice: 135.96,
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
      ),
    );
  }
}
