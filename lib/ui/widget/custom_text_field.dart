import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final String text;
  final void Function() onTap;

  CustomTextField({Key? key, required this.text, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Flexible(
      child: GestureDetector(
        onTap: () {
          onTap();
        },
        child: Container(
          width: double.infinity,
          margin: const EdgeInsets.symmetric(horizontal: 28,vertical: 16),
          color: Color(0x40e9e9e9),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                margin: const EdgeInsets.symmetric(vertical: 24, horizontal: 24),
                child: Text(text,
                    style: const TextStyle(color: Colors.black, fontSize: 16,fontWeight: FontWeight.w400)),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 24),
                child: const Icon(Icons.arrow_forward_ios_rounded,size: 16),
              )
            ],
          ),
        ),
      ),
    );
  }
}
