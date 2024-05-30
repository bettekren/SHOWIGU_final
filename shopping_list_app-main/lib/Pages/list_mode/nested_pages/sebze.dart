import 'package:flutter/material.dart';
import '../list_detail.dart';

class sebze extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFCFAF8),
      body: ListView(
        children: <Widget>[
          const SizedBox(height: 8.0),
          Container(
            padding: const EdgeInsets.only(right: 15.0),
            width: MediaQuery.of(context).size.width - 30.0,
            height: MediaQuery.of(context).size.height - 50.0,
            child: GridView.count(
              crossAxisCount: 3,
              primary: false,
              crossAxisSpacing: 7.0,
              mainAxisSpacing: 7.0,
              childAspectRatio: 0.9,
              children: <Widget>[
                _buildCard(
                  'Cookie mint',
                  'images/cleaning/cif.png',
                  false,
                  false,
                  context,
                ),
                _buildCard(
                  'Cookie cream',
                  'images/cleaning/bulasıkdeterjan.jpg',
                  true,
                  false,
                  context,
                ),
                _buildCard(
                  'Cookie classic',
                  'images/cleaning/yumossprey.jpg',
                  false,
                  true,
                  context,
                ),
                _buildCard(
                  'Cookie choco',
                  'images/cleaning/sleepy.png',
                  false,
                  false,
                  context,
                ),
              ],
            ),
          ),
          const SizedBox(height: 6.0),
        ],
      ),
    );
  }

  Widget _buildCard(
      String name,
      String imgPath,
      bool added,
      bool isFavorite,
      context,
      ) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => list_detail(
                assetPath: imgPath,
                cookiename: name,
              ),
            ),
          );
        },
        child: Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(15.0),
            boxShadow: [
              BoxShadow(
                color: Colors.grey.withOpacity(0.2),
                spreadRadius: 3.0,
                blurRadius: 5.0,
              ),
            ],
            color: Colors.white,
          ),
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(1.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    Icon(
                      Icons.add_outlined,
                      color: Color(0xFFEF7532),
                    ),
                  ],
                ),
              ),
              Hero(
                tag: imgPath,
                child: Container(
                  height: 50.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(imgPath),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              SizedBox(height: 4.0),
              Text(
                name,
                style: TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 12.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(2.0),
                child: Container(
                  color: const Color(0xFFEBEBEB),
                  height: 1.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 5.0, right: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    if (!added) ...[
                      Icon(
                        Icons.shopping_basket,
                        color: Color(0xFFD17E50),
                        size: 12.0,
                      ),
                      Text(
                        'Add to cart',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          color: Color(0xFFD17E50),
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                    if (added) ...[
                      Icon(
                        Icons.shopping_basket,
                        color: Color(0xFFD17E50),
                        size: 12.0,
                      ),
                      Text(
                        'Add to cart',
                        style: TextStyle(
                          fontFamily: 'Varela',
                          color: Color(0xFFD17E50),
                          fontSize: 12.0,
                        ),
                      ),
                    ],
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
