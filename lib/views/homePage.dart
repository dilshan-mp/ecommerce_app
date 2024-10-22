import 'package:ecommerce_app/views/Popular.dart';
import 'package:ecommerce_app/views/Womes.dart';
import 'package:ecommerce_app/views/mens.dart';
import 'package:ecommerce_app/views/sale.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  final List<Widget> _tabs = [
    const PopularPage(),
    const Mens(),
    const Womenes(),
    const Sale(),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: _tabs.length,
      child: Scaffold(
        appBar: AppBar(
          leading: Padding(
            padding: const EdgeInsets.only(left: 8.0),
            child: Container(
              //color: Colors.amber,
              width: 71,
              height: 20,
              child: Image.asset('assets/images/Geeta..png'),
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 10),
              child: IconButton(
                onPressed: () {},
                icon: const Icon(Icons.search),
              ),
            )
          ],
          bottom: const TabBar(tabs: [
            Tab(text: 'Popular'),
            Tab(text: 'Mens'),
            Tab(text: 'Womens'),
            Tab(text: 'Sale'),
          ]),
        ),
        body: const TabBarView(
          // Ensure to add TabBarView to show the content of each tab
          children: [
            PopularPage(),
            Mens(),
            Womenes(),
            Sale(),
          ],
        ),
      ),
    );
  }
}
