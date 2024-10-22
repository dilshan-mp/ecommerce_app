import 'package:ecommerce_app/views/Popular.dart';
import 'package:ecommerce_app/views/homePage.dart';
import 'package:ecommerce_app/widgets/customButton.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';

class SuccessPage extends StatelessWidget {
  const SuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(Icons.arrow_back),
        ),
      ),
      body: Column(
        children: [
          Center(
            child: SizedBox(
              //color: Colors.amber,
              width: 305,
              height: 343,
              child: Image.asset(
                'assets/images/celebrate.png',
                fit: BoxFit.cover,
              ),
            ),
          ),
          const SizedBox(
            //color: Colors.amber,
            width: 276,
            height: 58,
            child: Text(
              "Congrats!Your Order has been placed",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.w900),
              textAlign: TextAlign.center,
            ),
          ),
          Container(
            width: 196,
            height: 36,
            //color: Colors.amber,
            margin: const EdgeInsets.only(top: 20),
            child: const Text(
              'Your Items has been placed and is on it\'s way to being processed',
              style: TextStyle(fontSize: 12, color: Colors.grey),
              textAlign: TextAlign.center,
            ),
          ),
          CustomButton(
            buttonText: "TRACK ORDER",
            onPressed: () {},
            margin: EdgeInsets.only(left: 47, right: 47, top: 40),
          ),
          CustomButton(
            buttonText: "CONTINUE SHOPING",
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) => const MyHomePage(),
                ),
              );
            },
            margin: const EdgeInsets.only(top: 10, left: 47, right: 47),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextButton(
                onPressed: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => const MyHomePage()),
                  );
                },
                child: Text(
                  'Back To Home',
                  style: TextStyle(color: Colors.black),
                )),
          )
        ],
      ),
    );
  }
}
