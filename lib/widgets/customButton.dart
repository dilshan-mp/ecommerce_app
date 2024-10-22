import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;

  const CustomButton({
    super.key,
    required this.buttonText,
    required this.onPressed,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 354,
      height: 54,
      margin: const EdgeInsets.only(
        top: 40,
        left: 30,
        right: 30,
        bottom: 23,
      ),
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: const Color(0xFF6342E8),
          elevation: 0,
        ),
        child: Text(
          buttonText,
          style: const TextStyle(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
