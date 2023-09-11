import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/view/screen/auth.dart';
import 'package:flutter_ecommerce_app_ui/view/screen/cart.dart';
import 'package:flutter_ecommerce_app_ui/view/screen/checkout.dart';
import 'package:flutter_ecommerce_app_ui/view/screen/home.dart';
import 'package:flutter_ecommerce_app_ui/view/screen/home_screen.dart';
import 'package:flutter_ecommerce_app_ui/view/screen/items.dart';
import 'package:flutter_ecommerce_app_ui/view/screen/items_details.dart';
import 'package:flutter_ecommerce_app_ui/view/screen/settings.dart';

void main() async {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      routes: {
        // "welcome": (context) => const Welcome(),
        "auth": (context) => const Auth(),
        "home": (context) => const Home(),
        "homeScreen": (context) => const HomeScreen(),
        "cart": (context) => const Cart(),
        "settinge": (context) => const Settings(),
        "items": (context) => const Items(),
        "itemsDetails": (context) => const ItemsDetails(),
        "checkout": (context) => const Checkout(),
      },
      home: const Auth(),
    );
  }
}
