import 'package:flutter/material.dart';

import '../../../Constants/App_constants.dart';

class TopText extends StatelessWidget {
  const TopText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenWidth = screenInfo.size.width;
    final double screenHeight = screenInfo.size.height;
    return  SingleChildScrollView(
        child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: <Widget>[
        Container(
        width: screenWidth ,
        height: screenHeight/2.7,
        decoration: BoxDecoration(
        borderRadius: const BorderRadius.all(Radius.circular(20)),
    border: Border.all(width: 2, color: AppColors.logContainer),
    boxShadow:
    [ BoxShadow(
    color: Colors.grey.withOpacity(0.8),
    spreadRadius: 5, // Gölgenin yayılma yarıçapı
    blurRadius: 7, // Gölge bulanıklık yarıçapı
    offset: const Offset(0, 6),
    ),
    ],
    image: const DecorationImage(
    image: AssetImage(AppImages.logo),
    fit: BoxFit.cover,
    ),
    ),
    ),
    ],
    ),
    );
  }
}
