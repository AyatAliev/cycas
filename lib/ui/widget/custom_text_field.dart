import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final TextInputType inputType;
  final TextInputAction inputAction;
  final TextEditingController textController;
  final int maxLines;
  final bool passwordVisible;

  const CustomTextField({Key? key, required this.hintText, required this.inputType, required this.textController, this.passwordVisible = false, required this.inputAction, this.maxLines = 1}) : super(key: key);

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
          maxLines: maxLines,
          textInputAction: inputAction,
          obscureText: passwordVisible,
          controller: textController,
          decoration: InputDecoration(
            border: InputBorder.none,
            labelText: hintText,
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
