
import 'package:Showigu_Firebase/Pages/shopping_mode/Shopping_Mode.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import '../Constants/App_constants.dart';
import 'list_mode/list_main.dart';

class ChooseMode extends StatefulWidget {
  const ChooseMode({Key? key}) : super(key: key);

  @override
  State<ChooseMode> createState() => _ChooseModeState();
}

class _ChooseModeState extends State<ChooseMode> {
  bool isShoppingMode = false;

  void toggleMode() {
    setState(() {
      isShoppingMode = !isShoppingMode;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(""),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding:  EdgeInsets.only(top: 30),
            child: Text("MODUNU SEÇ", style:
            TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 30,
              letterSpacing: 3,
                shadows: [
                  Shadow(
                    blurRadius:7.0,
                    color: Colors.grey,
                    offset: Offset(5.0,5.0),
                  )
                ],
                fontStyle: FontStyle.italic,
              color: Color.fromARGB(255, 18, 124, 175)
            ),
            ),
          ),
          Lottie.network(
            AppImages.ChooseaAnimation,
            width: MediaQuery.of(context).size.width,
            height: MediaQuery.of(context).size.height * 0.5,
          ),
          const SizedBox(height: 20),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  toggleMode();
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Shopping_Mode()));
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.shopping_cart,
                      size: 50,
                    ),
                    Text(
                      'Alışveriş Modu',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
              const SizedBox(width: 30),
              GestureDetector(
                onTap: () {
                  toggleMode();
                  Navigator.push(context, MaterialPageRoute(builder: (context) =>list_main()));
                },
                child: Column(
                  children: [
                    Icon(
                      Icons.list,
                      size: 50,
                    ),
                    Text(
                      'Liste Modu',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ),
            ],
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
