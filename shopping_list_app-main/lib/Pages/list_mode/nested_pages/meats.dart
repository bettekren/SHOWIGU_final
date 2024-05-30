
import 'package:Showigu_Firebase/Pages/list_mode/nested_pages/staple_food.dart';
import 'package:Showigu_Firebase/Pages/list_mode/nested_pages/vegetable_fruit.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import 'milk_breakfast.dart';



class meats extends StatefulWidget {

  @override
  State<meats> createState() => _meatsState();
}

class _meatsState extends State<meats>  with SingleTickerProviderStateMixin{

  late TabController _nestedTabController;
  @override
  void initState() {
    super.initState();
    _nestedTabController = TabController(length: 3, vsync: this); // İç içe tabbar için
  }

  @override
  void dispose() {
    _nestedTabController.dispose();
    super.dispose();
  }
  @override
  late String name;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: TabBar(
          controller: _nestedTabController,
          indicatorColor: Colors.transparent,
          labelColor: const Color(0xFFC88D67),
          unselectedLabelColor: const Color(0xFFCDCDCD),
          tabs: [
            const Tab(
              child: Text(
                'Kırmızı Et',
                style: TextStyle(fontFamily: 'Varela', fontSize: 16.0),
              ),
            ),
            const Tab(
              child: Text(
                'Beyaz Et',
                style: TextStyle(fontFamily: 'Varela', fontSize: 16.0),
              ),
            ),

            const Tab(
              child: Text(
                'Deniz Ürünü',
                style: TextStyle(fontFamily: 'Varela', fontSize: 16.0),
              ),
            ),

          ],
        ),
      ),
      body: TabBarView(
        controller: _nestedTabController,
        children: [
          staple_food(),
          vegetable_fruit(),
          milk_breakfast(),

        ],
      ),

    );
  }
}
