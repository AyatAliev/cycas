import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomEdiTextField extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;

  const CustomEdiTextField({Key? key, required this.hintText, required this.inputType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16),
        alignment: Alignment.centerLeft,
        width: double.infinity,
        margin: const EdgeInsets.symmetric(horizontal: 54,vertical: 9),
        decoration: BoxDecoration(
          color: const Color(0x40e9e9e9),
          borderRadius: BorderRadius.circular(4),
        ),
        child: TextField(
          decoration: InputDecoration(
            border: InputBorder.none,
            hintText: hintText,
            hintStyle: const TextStyle(
              color: Color(0xFF707070)
            )
          ),
          keyboardType: inputType,
          style: const TextStyle(
            color: Colors.black,
          ),
        ),
      ),
    );
  }
}
