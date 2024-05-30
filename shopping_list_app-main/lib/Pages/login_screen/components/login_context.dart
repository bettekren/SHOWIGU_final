import 'package:Showigu_Firebase/Pages/firebase_auth_implemantaion/auth_service.dart';
import 'package:flutter/material.dart';
import '../../locator.dart';
import 'bottom_text.dart';
import 'top_text.dart';

class LoginContent extends StatefulWidget {
  const LoginContent({Key? key}) : super(key: key);

  @override
  State<LoginContent> createState() => _LoginContentState();
}

class _LoginContentState extends State<LoginContent> {
  final _tName = TextEditingController();
  final _tEmail = TextEditingController();
  final _tPassword = TextEditingController();

  @override
  void dispose() {
    _tName.dispose();
    _tEmail.dispose();
    _tPassword.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    var screenInfo = MediaQuery.of(context);
    final double screenWidth = screenInfo.size.width;

    return Stack(
      children: [
          TopText(),
        Padding(
          padding: const EdgeInsets.only(top: 200),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              inputField(_tName, 'Kullanıcı Adı', Icons.account_circle),
              inputField(_tEmail, 'Email', Icons.mail),
              inputField(_tPassword, 'Şifre', Icons.password),
              SizedBox(
                width: screenWidth / 3, // Butonun genişliği
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(
                    onPressed: () {
                      locator.get<AuthService>().signUp(
                        context,
                        name: _tName.text,
                        email: _tEmail.text,
                        password: _tPassword.text,
                      );
                    },
                    child: Text('Kayıt Ol'), // Buton üzerinde metin göstermek için Text widget'ı kullanılır
                    style: ElevatedButton.styleFrom(
                      foregroundColor: Colors.white, // Butonun metin rengi
                      backgroundColor: Color.fromARGB(255, 232, 182, 19), // Butonun arka plan rengi
                      padding: EdgeInsets.symmetric(vertical: 12), // Buton içindeki boşluk
                      shape: StadiumBorder(), // Butonun şeklini ayarlar
                      minimumSize:Size(100, 50)  // Butonun minimum genişliği ve yüksekliği
                    ),
                  ),
                ),
              ),


            ],
          ),
        ),
        const Align(
          alignment: Alignment.bottomCenter,
          child: Padding(
            padding: EdgeInsets.only(bottom: 50),
            child: BottomText(),
          ),
        ),
      ],
    );
  }

  Widget inputField(TextEditingController controller, String hint, IconData iconData) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 8),
      child: SizedBox(
        height: 50,
        child: Material(
          elevation: 8,
          shadowColor: Colors.black87,
          color: Colors.transparent,
          borderRadius: BorderRadius.circular(30),
          child: TextField(
            controller: controller,
            textAlignVertical: TextAlignVertical.bottom,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(30),
                borderSide: BorderSide.none,
              ),
              filled: true,
              fillColor: Colors.white,
              hintText: hint,
              prefixIcon: Icon(iconData),
            ),
          ),
        ),
      ),
    );
  }

  Widget actionButton(String title, {Function()? onTap}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 135, vertical: 16),
      child: ElevatedButton(
        onPressed: onTap,
        style: ElevatedButton.styleFrom(
          padding: const EdgeInsets.symmetric(vertical: 14),
          backgroundColor: Colors.blue,
          shape: const StadiumBorder(),
          elevation: 8,
          shadowColor: Colors.black87,
        ),
        child: Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Widget orDivider() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 130, vertical: 8),
      child: Row(
        children: [
          Flexible(
            child: Container(
              height: 1,
              color: Colors.blue,
            ),
          ),
        ],
      ),
    );
  }

  Widget forgotPassword() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 110),
      child: TextButton(
        onPressed: () {},
        child: const Text(
          'Şifremi Unuttum',
          style: TextStyle(
            fontSize: 16,
            fontWeight: FontWeight.w600,
            color: Colors.blue,
          ),
        ),
      ),
    );
  }
}
