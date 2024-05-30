import 'dart:math' as math;
import 'package:Showigu_Firebase/Pages/login_screen/components/login_context.dart';
import 'package:flutter/material.dart';
import 'components/center_widget/center_widget.dart';

class LoginScreen extends StatefulWidget {
  const LoginScreen({Key? key}) : super(key: key);
  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget topWidget(double screenWidth) {
    return Text("SHOWIGU");
  }

  @override
  Widget build(BuildContext context) {
    final screenSize = MediaQuery.of(context).size;

    return Scaffold(
      body: const LoginContent(),


    );
  }
}