import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            'AUTORISATION',
            style: TextStyle(
              fontSize: 40,
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            height: 50,
            color: const Color(0x50d3d3d3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: const TextField(
              keyboardType: TextInputType.name,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
          Container(
            alignment: Alignment.centerLeft,
            width: double.infinity,
            height: 50,
            color: const Color(0x50d3d3d3),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
            ),
            child: const TextField(
              obscureText: true,
              style: TextStyle(
                color: Colors.black,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
