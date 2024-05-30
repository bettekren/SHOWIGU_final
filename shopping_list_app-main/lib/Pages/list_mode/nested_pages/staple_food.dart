import 'package:flutter/material.dart';
import '../Product.dart'; // "Product" modelini içeren dosyanın yolu/ ProductGrid widget'ını içeren dosyanın yolu

class staple_food extends StatefulWidget {
  @override
  State<staple_food> createState() => _staple_foodState();
}

class _staple_foodState extends State<staple_food> with SingleTickerProviderStateMixin {
  late TabController _nestedTabController;

  @override
  void initState() {
    super.initState();
    _nestedTabController = TabController(length: 5, vsync: this);
  }

  @override
  void dispose() {
    _nestedTabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final bakliyatProducts = allProducts.where((product) => product.category == 'Bakliyat').toList();
    final konserveProducts = allProducts.where((product) => product.category == 'Konserve').toList();
    final soslarProducts = allProducts.where((product) => product.category == 'Soslar').toList();
    final yaglarProducts = allProducts.where((product) => product.category == 'Yağlar').toList();
    final baharatProducts = allProducts.where((product) => product.category == 'Baharat').toList();


    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0.0,
        centerTitle: true,
        title: TabBar(
          isScrollable: true,
          controller: _nestedTabController,
          indicatorColor: Colors.transparent,
          labelColor: const Color(0xFFC88D67),
          unselectedLabelColor: const Color(0xFFCDCDCD),
          tabs: [
            const Tab(
              child: Text(
                'Bakliyat',
                style: TextStyle(fontFamily: 'Varela', fontSize: 18.0),
              ),
            ),
            const Tab(
              child: Text(
                'Konserve',
                style: TextStyle(fontFamily: 'Varela', fontSize: 18.0),
              ),
            ),
            const Tab(
              child: Text(
                'Soslar',
                style: TextStyle(fontFamily: 'Varela', fontSize: 18.0),
              ),
            ),
            const Tab(
              child: Text(
                'Yağlar',
                style: TextStyle(fontFamily: 'Varela', fontSize: 18.0),
              ),
            ),
            const Tab(
              child: Text(
                'Baharat',
                style: TextStyle(fontFamily: 'Varela', fontSize: 15.0),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _nestedTabController,
        children: [
          ProductGrid(products: bakliyatProducts),
          ProductGrid(products: konserveProducts),
          ProductGrid(products: soslarProducts),
          ProductGrid(products: yaglarProducts),
          ProductGrid(products: baharatProducts),
        ],
      ),
    );
  }
}

