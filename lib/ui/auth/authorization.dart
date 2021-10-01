import 'package:cycas/ui/sellers/main_sellers.dart';
import 'package:cycas/ui/widget/custom_button.dart';
import 'package:cycas/ui/widget/custom_text_field.dart';
import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'bloc/authorization_bloc.dart';

class Authorization extends StatelessWidget {
  static const String routeName = "authorization";

  final TextEditingController loginController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  Authorization({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        Provider<AuthorizationBloc>(
            create: (_) => AuthorizationBloc(),
            dispose: (context, authorizationBloc) =>
                authorizationBloc.dispose()),
      ],
      child: Scaffold(
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
            CustomTextField(
              hintText: "Логин",
              inputType: TextInputType.emailAddress,
              textController: loginController,
              inputAction: TextInputAction.next,
            ),
            CustomTextField(
                hintText: "Пароль",
                inputType: TextInputType.visiblePassword,
                textController: passwordController,
                inputAction: TextInputAction.done,
                passwordVisible: true),
            GestureDetector(
              onTap: () {
                if (loginController.text == "ayat") {
                  Navigator.pushNamed(context, MainSellers.routeName);
                } else {
                  ScaffoldMessenger.of(context).showSnackBar(const SnackBar(
                      content: Text("Не верный логин или пароль")));
                }
              },
              child: Container(
                  padding: const EdgeInsets.only(top: 40),
                  child: const CustomButton(text: "Войти")),
            )
          ],
        ),
      ),
    );
  }
}
