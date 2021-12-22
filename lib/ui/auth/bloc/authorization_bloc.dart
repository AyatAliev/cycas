import 'package:flutter/cupertino.dart';

class AuthorizationBloc {

  final TextEditingController loginController;
  final TextEditingController passwordController;

  AuthorizationBloc() : loginController = TextEditingController(),
       passwordController = TextEditingController();

  void dispose() async {

  }
}