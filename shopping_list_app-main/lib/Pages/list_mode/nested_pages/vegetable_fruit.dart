import 'package:flutter/material.dart';
import '../Product.dart'; // "Product" modelini içeren dosyanın yolu/ ProductGrid widget'ını içeren dosyanın yolu

class vegetable_fruit extends StatefulWidget {
  @override
  State<vegetable_fruit> createState() => _vegetable_fruitState();
}

class _vegetable_fruitState extends State<vegetable_fruit> with SingleTickerProviderStateMixin {
  late TabController _nestedTabController;

  @override
  void initState() {
    super.initState();
    _nestedTabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _nestedTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final sebzeProducts = allProducts.where((product) => product.category == 'Sebze').toList();
    final meyveProducts = allProducts.where((product) => product.category == 'Meyve').toList();


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
                'Sebze',
                style: TextStyle(fontFamily: 'Varela', fontSize: 18.0),
              ),
            ),
            const Tab(
              child: Text(
                'Meyve',
                style: TextStyle(fontFamily: 'Varela', fontSize: 18.0),
              ),
            ),


          ],
        ),
      ),
      body: TabBarView(
        controller: _nestedTabController,
        children: [
          ProductGrid(products: sebzeProducts),
          ProductGrid(products: meyveProducts),
        ],
      ),
    );
  }
}

