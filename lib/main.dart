import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/view/screen/auth/auth.dart';
import 'package:flutter_ecommerce_app_ui/view/screen/cart/cart.dart';
import 'package:flutter_ecommerce_app_ui/view/screen/cart/checkout.dart';
import 'package:flutter_ecommerce_app_ui/view/screen/home/home.dart';
import 'package:flutter_ecommerce_app_ui/view/screen/items/items.dart';
import 'package:flutter_ecommerce_app_ui/view/screen/items/items_details.dart';
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
        "cart": (context) => const Cart(),
        "settinge": (context) => const Settings(),
        "items": (context) => const Items(),
        "itemsDetails": (context) => const ItemsDetails(),
        "checkout": (context) => const Checkout(),
      },
    );
  }
}
