import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class milk_breakfast extends StatefulWidget {

  @override
  State<milk_breakfast> createState() => _milk_breakfastState();
}

class _milk_breakfastState extends State<milk_breakfast>  with SingleTickerProviderStateMixin{

  late TabController _nestedTabController;
  @override
  void initState() {
    super.initState();
    _nestedTabController = TabController(length: 5, vsync: this); // İç içe tabbar için
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
          isScrollable: true,
          controller: _nestedTabController,
          indicatorColor: Colors.transparent,
          labelColor: const Color(0xFFC88D67),
          unselectedLabelColor: const Color(0xFFCDCDCD),
          tabs: [
            const Tab(
              child: Text(
                'Peynir',
                style: TextStyle(fontFamily: 'Varela', fontSize: 18.0),
              ),
            ),
            const Tab(
              child: Text(
                'Süt',
                style: TextStyle(fontFamily: 'Varela', fontSize: 18.0),
              ),
            ),

            const Tab(
              child: Text(
                'Şarküteri',
                style: TextStyle(fontFamily: 'Varela', fontSize: 18.0),
              ),
            ),

            const Tab(
              child: Text(
                'Yoğurt',
                style: TextStyle(fontFamily: 'Varela', fontSize: 18.0),
              ),
            ),

            const Tab(
              child: Text(
                'Sürülebilir',
                style: TextStyle(fontFamily: 'Varela', fontSize: 18.0),
              ),
            ),
          ],
        ),
      ),
      body: TabBarView(
        controller: _nestedTabController,
        children: [
        // Süt Ve Kahvaltılık,// İçecek
        ],
      ),

    );
  }
}
