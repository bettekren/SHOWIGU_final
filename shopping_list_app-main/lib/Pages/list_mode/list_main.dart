import 'package:flutter/material.dart';
import '../ChooseMode.dart';
import 'nested_pages/meats.dart';
import 'nested_pages/milk_breakfast.dart';
import 'nested_pages/staple_food.dart';
import 'nested_pages/vegetable_fruit.dart';

class list_main extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> with TickerProviderStateMixin {
  late TabController _tabController;


  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 10, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 5.0,
        centerTitle: true,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back, color: Color(0xFF545D68)),
          onPressed: () {
            Navigator.push(context, MaterialPageRoute(builder: (context) => ChooseMode()));
          },
        ),


        actions: <Widget>[
          IconButton(
            icon: const Icon(Icons.notifications_none, color: Color(0xFF545D68)),
            onPressed: () {},
          ),
        ],
        bottom: TabBar(
          controller: _tabController,
          indicatorColor: Colors.transparent,
          labelColor: const Color(0xFFC88D67),
          isScrollable: true,
          labelPadding: const EdgeInsets.only(right: 45.0),
          unselectedLabelColor: const Color(0xFFCDCDCD),
          tabs: [
            const Tab(
              child: Text(
                'Temel Gıda',
                style: TextStyle(fontFamily: 'Varela', fontSize: 21.0),
              ),
            ),
            const Tab(
              child: Text(
                'Sebze & Meyve',
                style: TextStyle(fontFamily: 'Varela', fontSize: 21.0),
              ),
            ),
            const Tab(
              child: Text(
                'Süt & Kahvaltılık',
                style: TextStyle(fontFamily: 'Varela', fontSize: 21.0),
              ),
            ),
            const Tab(
              child: Text(
                'Et, Tavuk & Balık',
                style: TextStyle(fontFamily: 'Varela', fontSize: 21.0),
              ),
            ),

            const Tab(
              child: Text(
                'Atıştırmalık',
                style: TextStyle(fontFamily: 'Varela', fontSize: 21.0),
              ),
            ),

            const Tab(
              child: Text(
                'İçecek',
                style: TextStyle(fontFamily: 'Varela', fontSize: 21.0),
              ),
            ),

            const Tab(
              child: Text(
                'Donmuş Gıda',
                style: TextStyle(fontFamily: 'Varela', fontSize: 21.0),
              ),
            ),
            const Tab(
              child: Text(
                'Temizlik',
                style: TextStyle(fontFamily: 'Varela', fontSize: 21.0),
              ),
            ),

            const Tab(
              child: Text(
                'Kişisel Bakım',
                style: TextStyle(fontFamily: 'Varela', fontSize: 21.0),
              ),
            ),
            const Tab(
              child: Text(
                'Diğer',
                style: TextStyle(fontFamily: 'Varela', fontSize: 21.0),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _tabController,
        children: [
          // Sebzeler
          staple_food(), //Temel Gıda
          vegetable_fruit(), //Sebze & Meyve
          milk_breakfast(), //Süt & Kahvaltılık
          meats(),
          staple_food(),
          milk_breakfast(),
          vegetable_fruit(),
          meats(),
          meats(),
          meats(),



        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: const Color(0xFFF17532),
        child: const Icon(Icons.add_circle_outline, color: Colors.white,),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      bottomNavigationBar: BottomBar(),
    );
  }
}

class BottomBar extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Colors.white,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: <Widget>[
          IconButton(
            icon: const Icon(Icons.home),
            onPressed: () {
            },
          ),
          IconButton(
            icon: const Icon(Icons.shopping_cart),
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}