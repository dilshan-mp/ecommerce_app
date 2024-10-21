import 'package:ecommerce_app/views/signupPage.dart';
import 'package:flutter/material.dart';

class FirstPage extends StatelessWidget {
  const FirstPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Image.asset(
              'assets/images/e30595d05b3f5509eace87d2e161fa10.jfif',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            margin: const EdgeInsets.only(
              top: 520,
              left: 55,
              right: 55,
            ),
            child: Image.asset('assets/images/Logo.png'),
          ),
          Container(
            width: 222,
            height: 54,
            margin: const EdgeInsets.only(
              top: 670,
              left: 96,
              right: 96,
            ),
            child: ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.transparent,
                elevation: 0,
                side: const BorderSide(
                  color: Colors.white,
                  width: 3,
                ),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(56),
                ),
              ),
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => const SignUpPage(),
                  ),
                );
              },
              child: const Text(
                "Shop Now",
                style: TextStyle(color: Colors.white),
              ),
            ),
          )
        ],
      ),
    );
  }
}
