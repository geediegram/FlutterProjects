import 'package:coffee_shop/screens/auth/register.dart';
import 'package:coffee_shop/screens/auth/sign_in.dart';
import 'package:flutter/material.dart';

class Auth extends StatefulWidget {
  const Auth({Key? key}) : super(key: key);

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {

  bool showShowSign = true;

  void toggleView() {
    setState(() => showShowSign = !showShowSign);
  }

  @override
  Widget build(BuildContext context) {
    if(showShowSign) {
      return SignIn(params: toggleView);
    } else {
      return Register(params: toggleView);
      // return Register(params: toggleView);
    }
  }
}
