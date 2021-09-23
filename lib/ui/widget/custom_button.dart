import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  final String text;

  const CustomButton({Key? key, required this.text}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16,horizontal: 40),
      decoration: BoxDecoration(
        color: const Color(0xFF2D9CDB),
        borderRadius: BorderRadius.circular(4),
      ),
      child: Text(text,
          style: const TextStyle(
              fontSize: 16, fontWeight: FontWeight.w500, color: Colors.white)),
    );
  }
}
