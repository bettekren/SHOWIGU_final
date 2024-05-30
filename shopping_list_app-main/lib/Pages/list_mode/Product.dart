import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../Box.dart';
import 'list_detail.dart';

class Product {
  final String name;
  final String imgPath;
  final String category;

  Product({required this.name, required this.imgPath, required this.category});
}

List<Product> allProducts = [
  Product(name: 'fasulye', imgPath: 'images/saglik/beyazkatisabun.jpg', category: 'Yağlar'),
  Product(name: 'Domates', imgPath: 'images/vegetable_fruit/vegetable/tomato.jpeg', category: 'Sebze'),
  Product(name: 'Havuç', imgPath: 'images/vegetable_fruit/vegetable/carrot.jpeg', category: 'Sebze'),
  Product(name: 'Maydanoz', imgPath: 'images/vegetable_fruit/vegetable/parsley.jpg', category: 'Sebze'),
  Product(name: 'Patates', imgPath: 'images/vegetable_fruit/vegetable/potato.jpeg', category: 'Sebze'),
  Product(name: 'Kıvırcık', imgPath: 'images/vegetable_fruit/vegetable/lettuce.jpeg', category: 'Sebze'),
  Product(name: 'Salatalık', imgPath: 'images/vegetable_fruit/vegetable/cucumber.jpeg', category: 'Sebze'),
  Product(name: 'Brokoli', imgPath: 'images/vegetable_fruit/vegetable/broccoli.jpeg', category: 'Sebze'),
  Product(name: 'Kırmızı Biber', imgPath: 'images/vegetable_fruit/vegetable/chiliPepper.jpeg', category: 'Sebze'),
  Product(name: 'Patlıcan', imgPath: 'images/vegetable_fruit/vegetable/eggplant.jpeg', category: 'Sebze'),
  Product(name: 'Mercimek', imgPath: 'images/temelgida/bakliyat/yesilmercimek.jpeg', category: 'Bakliyat'),
  Product(name: 'Baldo Pirinç', imgPath: 'images/temelgida/bakliyat/baldopirinc.jpeg', category: 'Bakliyat'),
  Product(name: 'Barbunya', imgPath: 'images/temelgida/bakliyat/barbunya.jpeg', category: 'Bakliyat'),
  Product(name: 'Chia Tohumu', imgPath: 'images/temelgida/bakliyat/chiatohumu.jpeg', category: 'Bakliyat'),
  Product(name: 'Kalem Makarna', imgPath: 'images/temelgida/bakliyat/kalemmakarna.jpeg', category: 'Bakliyat'),
  Product(name: 'Kırık Pirinç', imgPath: 'images/temelgida/bakliyat/kirikpirinc.jpeg', category: 'Bakliyat'),
  Product(name: 'Köftelik Bulgur', imgPath: 'images/temelgida/bakliyat/koftelikbulgur.jpeg', category: 'Konserve'),
  Product(name: 'Mercimek', imgPath: 'images/temelgida/bakliyat/Mercimek.jpeg', category: 'Bakliyat'),
  Product(name: 'Mısır', imgPath: 'images/temelgida/bakliyat/misir.jpeg', category: 'Bakliyat'),
  Product(name: 'Nohut', imgPath: 'images/temelgida/bakliyat/nohut.jpeg', category: 'Bakliyat'),
  Product(name: 'Osmancık Pirinç', imgPath: 'images/temelgida/bakliyat/OsmancikPirinc.jpeg', category: 'Bakliyat'),
  Product(name: 'Pilavlık Bulgur', imgPath: 'images/temelgida/bakliyat/pilavlikbulgur.jpeg', category: 'Bakliyat'),
  Product(name: 'Un', imgPath: 'images/temelgida/bakliyat/un.jpeg', category: 'Bakliyat'),

  Product(name: 'Bezelye', imgPath: 'images/temelgida/konserve/bezelye.jpg', category: 'Konserve'),
  Product(name: 'Biber salçası', imgPath: 'images/temelgida/konserve/bibersalca.jpg', category: 'Konserve'),
  Product(name: 'Börülce', imgPath: 'images/temelgida/konserve/borulce.jpg', category: 'Konserve'),
  Product(name: 'Konserve Enginar', imgPath: 'images/temelgida/konserve/enginar.jpg', category: 'Konserve'),
  Product(name: 'Fasulye', imgPath: 'images/temelgida/konserve/fasulye.jpg', category: 'Konserve'),
  Product(name: 'Haşlanmış Nohut', imgPath: 'images/temelgida/konserve/haslanmisnohut.jpg', category: 'Konserve'),
  Product(name: 'Kırmızı Biber', imgPath: 'images/temelgida/konserve/kirmizibiber.jpg', category: 'Konserve'),
  Product(name: 'Köz Patlıcan', imgPath: 'images/temelgida/konserve/kozpat.jpg', category: 'Konserve'),
  Product(name: 'Salça', imgPath: 'images/temelgida/konserve/salca.jpg', category: 'Konserve'),
  Product(name: 'Ton Balığı', imgPath: 'images/temelgida/konserve/tonbaligi.jpg', category: 'Konserve'),
  Product(name: 'Konserve Mısır', imgPath: 'images/temelgida/konserve/konservemisir.jpg', category: 'Konserve'),






  // Diğer ürünler...
];

// Yeni ürün ekleme metodu
void addProduct(Product product) {
  allProducts.add(product);
}

class ProductCard extends StatelessWidget {
  final Product product;

  ProductCard({required this.product});

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: EdgeInsets.all(10),
      child: Padding(
        padding: EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Image.asset(product.imgPath, height: 150, width: 150),
            SizedBox(height: 5),
            Text(product.name, style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold)),
            SizedBox(height: 5),
            Text(product.category, style: TextStyle(color: Colors.grey)),
          ],
        ),
      ),
    );
  }
}


class ProductGrid extends StatelessWidget {
  final List<Product> products;

  const ProductGrid({required this.products});

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 3,
      primary: false,
      crossAxisSpacing: 7.0,
      mainAxisSpacing: 7.0,
      childAspectRatio: 0.9,
      children: products.map((product) {
        return _buildCard(product, context);
      }).toList(),
    );
  }

  Widget _buildCard(Product product, BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(2.0),
      child: InkWell(
        onTap: () {
          Navigator.of(context).push(
            MaterialPageRoute(
              builder: (context) => list_detail(
                assetPath: product.imgPath,
                cookiename: product.name,
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
              InkWell(
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(builder: (context) => Box()));
                },
                child: const Padding(
                  padding: EdgeInsets.all(1.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Icon(Icons.add_outlined, color: Color(0xFFEF7532)),
                    ],
                  ),
                ),
              ),
              Hero(
                tag: product.imgPath,
                child: Container(
                  height: 60.0,
                  width: 75.0,
                  decoration: BoxDecoration(
                    image: DecorationImage(
                      image: AssetImage(product.imgPath),
                      fit: BoxFit.contain,
                    ),
                  ),
                ),
              ),
              const SizedBox(height: 4.0),
              Text(
                product.name,
                style: const TextStyle(
                  color: Color(0xFF575E67),
                  fontFamily: 'Varela',
                  fontSize: 14.0,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(5.0),
                child: Container(color: const Color(0xFFEBEBEB), height: 1.0),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 5.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    const Icon(Icons.shopping_basket, color: Color(0xFFD17E50), size: 12.0),
                    const Text('Add to cart', style: TextStyle(fontFamily: 'Varela', color: Color(0xFFD17E50), fontSize: 12.0)),
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



