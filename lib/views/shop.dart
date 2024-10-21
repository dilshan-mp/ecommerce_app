import 'package:flutter/material.dart';

class Shop extends StatefulWidget {
  const Shop({super.key});

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: const [
          Padding(
            padding: EdgeInsets.only(right: 30),
            child: Icon(Icons.search),
          ),
        ],
        // leading: const Text(
        //   'Geeta.',
        //   style: TextStyle(
        //     fontWeight: FontWeight.w900,
        //     fontSize: 18,
        //   ),
        // ),
      ),
      body: Container(),
    );
  }
}
