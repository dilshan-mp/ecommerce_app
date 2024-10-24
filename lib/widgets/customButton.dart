import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final EdgeInsetsGeometry margin;
  final Icon icon;
  final dynamic totalPrice;

  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
    this.margin =
        const EdgeInsets.only(top: 40, left: 30, right: 30, bottom: 23),
    required this.icon,
    this.totalPrice,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 354,
      height: 54,
      margin: margin,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF6342E8),
          elevation: 0,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            icon,
            SizedBox(
              width: 6,
            ),
            Text(
              buttonText,
              style: TextStyle(color: Colors.white),
            ),
            SizedBox(
              width: 30,
            ),
            Text('\$${totalPrice}', style: TextStyle(color: Colors.white))
          ],
        ),
        // child: Text(
        //   buttonText,
        //   style: const TextStyle(
        //     color: Colors.white,
        //   ),
        // ),
      ),
    );
  }
}
