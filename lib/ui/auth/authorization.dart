import 'package:cycas/ui/widget/custom_button.dart';
import 'package:cycas/ui/widget/custom_edittext_field.dart';
import 'package:flutter/material.dart';

class Authorization extends StatelessWidget {
  static const String routeName = "authorization";

  const Authorization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(bottom: 40),
            child: const Text(
              "Авторизация",
              style: TextStyle(
                fontSize: 36,
                color: Colors.black,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          const CustomEdiTextField(
              hintText: "Логин", inputType: TextInputType.emailAddress),
          const CustomEdiTextField(
              hintText: "Пароль", inputType: TextInputType.visiblePassword),
          Container(
              padding: const EdgeInsets.only(top: 40),
              child: const CustomButton(text: "Войти"))
        ],
      ),
    );
  }
}
