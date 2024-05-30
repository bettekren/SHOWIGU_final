import 'package:Showigu_Firebase/Pages/ChooseMode.dart';
import 'package:Showigu_Firebase/Pages/firebase_auth_implemantaion/auth_service.dart';
import 'package:flutter/material.dart';
import '../../../Constants/App_constants.dart';
import '../../locator.dart';
class LoginPage extends StatelessWidget {
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenWidth = screenInfo.size.width;
    final double screenHeight = screenInfo.size.height;
    return Scaffold(
      appBar: AppBar(
        title: const Text('Giriş Yap'),
      ),
      backgroundColor: Colors.white,
      body: Padding(
        padding: const EdgeInsets.all(1.0),
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
            children: <Widget>[
              Padding(
                padding:EdgeInsets.only(bottom: screenHeight/35),
                child: Container(
                  width: screenWidth,
                  height: screenHeight/3,
                  decoration: BoxDecoration(
                    image: const DecorationImage(
                      image: AssetImage(AppImages.logo),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
          
          
          Padding(
            padding: EdgeInsets.only(bottom: screenHeight/3),
            child: Column(
              children: [
                const Text(
                  'Tekrar Hoş Geldin',
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(height: 20),
                TextField(
                  controller: _emailController,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Email',
                    prefixIcon: const Icon(Icons.email),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                TextField(
                  controller: _passwordController,
                  obscureText: true,
                  style: const TextStyle(color: Colors.black),
                  decoration: InputDecoration(
                    hintText: 'Şifre',
                    prefixIcon: const Icon(Icons.lock),
                    filled: true,
                    fillColor: Colors.grey[200],
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: BorderSide.none,
                    ),
                  ),
                ),
                const SizedBox(height: 20),
                ElevatedButton(
                  onPressed: () => _girisYap(context),
                  child: const Text('Giriş Yap'),
                  style: ElevatedButton.styleFrom(backgroundColor:Color.fromARGB(255, 232, 182, 19)),
                ),
                const SizedBox(height: 10),
                TextButton(
                  onPressed: () {},
                  child: const Text('Şifremi Unuttum'),
                ),
                const SizedBox(height: 20),
              ],
            ),
          ),
              ],
              ),
        ),
    ),
    );
  }

  void _girisYap(BuildContext context) {
    final String email = _emailController.text.trim();
    final String password = _passwordController.text.trim();

    locator<AuthService>().signIn(context, email: email, password: password);

    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => ChooseMode()),
    );
  }
}
