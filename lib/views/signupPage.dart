import 'package:ecommerce_app/views/homePage.dart';
import 'package:ecommerce_app/views/shop.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatelessWidget {
  const SignUpPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox.expand(
            child: Opacity(
              opacity: 0.1,
              child: Image.asset(
                'assets/images/f0f02e1481620de7743e7df186bd0b9a.jfif',
                fit: BoxFit.cover,
              ),
            ),
          ),
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                  top: 117,
                  left: 142,
                  right: 142,
                ),
                child: Image.asset('assets/images/Logo (1).png'),
              ),
              Container(
                // color: Colors.amber,
                width: 217,
                height: 48,
                margin: const EdgeInsets.only(
                  top: 130,
                  left: 99,
                  right: 99,
                ),
                child: const Text(
                  'Create your fashion in your own way',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 19,
                    fontWeight: FontWeight.w900,
                    height: 1,
                  ),
                ),
              ),
              Container(
                //color: Colors.amber,
                width: 315,
                height: 60,
                margin: const EdgeInsets.only(
                  top: 32,
                  left: 50,
                  right: 50,
                ),
                child: const Text(
                  'Each men and women has their own style, Geeta\n help you to create your unique style.',
                  style: TextStyle(
                      fontSize: 12, fontWeight: FontWeight.w700, height: 1.3),
                  textAlign: TextAlign.center,
                ),
              ),
              Container(
                width: 315,
                height: 54,
                margin: const EdgeInsets.only(
                  top: 49,
                  left: 96,
                  right: 96,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.transparent,
                    elevation: 0,
                    side: const BorderSide(
                      color: Colors.black,
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
                        builder: (context) => const MyHomePage(),
                      ),
                    );
                  },
                  child: const Text(
                    "LOG IN",
                    style: TextStyle(color: Colors.black),
                  ),
                ),
              ),
              Container(
                width: 315,
                height: 20,
                margin: EdgeInsets.only(top: 13),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Image.asset('assets/images/Line.png'),
                    const SizedBox(
                      width: 5,
                    ),
                    const Text('OR'),
                    const SizedBox(
                      width: 5,
                    ),
                    Image.asset('assets/images/Line.png'),
                  ],
                ),
              ),
              Container(
                width: 315,
                height: 54,
                margin: const EdgeInsets.only(
                  top: 13,
                  left: 96,
                  right: 96,
                ),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueAccent,
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
                    "REGISTER",
                    style: TextStyle(color: Colors.white),
                  ),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
