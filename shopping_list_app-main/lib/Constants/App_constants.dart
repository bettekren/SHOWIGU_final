import 'dart:core';
import 'package:flutter/material.dart';

abstract class AppString{ //metinler
  static const label="SHOWIGU";
  static const label2="Ailenizin Akıllı Alışveriş Rehberi";
  static const label3="HAYDİ BAŞLAYALIM";
  static const userName ="Kullanıcı Adı";
  static const password ="Şifre";
  static const login="Giriş Yap";
  static const remember= "Beni Hatırla";
  static const createAcc="Hesap Oluştur";
  static const chooseMode='Lütfen Devam Etmek İstediğin Modu Seç';
  static const createAccountText="Hadi Hesap Oluşturalım";
  static const name="Adı";
  static const surname="Soyadı";
  static const mail="E-Posta";
  static const telno="Telefon Numarası";
  static const kabul="Gizlilik politikasını ve kullanım koşullarını kabul ediyorum.";
  static const shoppingMode="Alışveriş Modu";
  static const listMode="Liste Modu";
  static const diger='DİĞER';
}

abstract class AppColors {
  static const Color white =Colors.white;
  static const Color black=Colors.black;
  static const Color labelColor= Color.fromARGB(255, 232, 182, 19); //showıgu yazısı
  static const Color label2Color= Colors.black;//alışveriş rehberi
  static const Color firstButton= Color.fromARGB(255, 65, 196, 182);//ilk sayfadaki butonun rengi
  static const Color logContainer=Color.fromARGB(69, 53, 3, 62);//login sayfasındaki containerin rengi
  static const Color bgColor=Color.fromARGB(255, 241, 239, 239);//login sayfasının arka plan rengi
  static const Color p2buttonbg=Color.fromARGB(255,232,182,19); //ikinci sayfadaki butonun arka planı
  static const Color p2buttonfg =Color.fromARGB(255,65,196,182);//ikinci sayfadaki butonun gölgelendirmesi
  static const Color loginTextColor=Colors.black; //login sayfasındaki yazılar
  static const Color switchActiveColor= Color.fromARGB(255, 106, 53, 197);
  static const Color grey =Colors.grey;
  static const Color createButtonBg =Color.fromARGB(255, 105, 48, 204);
  static const Color teal= Colors.teal;
}

abstract class AppImages{ //resimler
  static const String showigu ='images/show.png';
  static const String logo='images/logomuz.jpeg';
  static const String ChooseaAnimation='https://lottie.host/74b7bcc4-7714-4129-919b-d6ba1a14ae5e/gRvVbMGuNQ.json'; //choose mode sayfasındaki animasyon
  static const String foodIcon="images/Foods.jpeg";
  static const String cleaning="images/Cleaning.jpeg";
  static const String health="images/Health.jpeg";
}