import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

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
          IconButton(onPressed: () {}, icon: const Icon(Icons.arrow_back),)
        ],
      ),
    );
  }
}
