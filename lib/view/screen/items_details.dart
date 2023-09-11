import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';
import 'package:flutter_ecommerce_app_ui/view/widget/cart/custom_button_cart.dart';
import 'package:flutter_ecommerce_app_ui/view/widget/items/custom_app_barItems_details.dart';
import 'package:flutter_ecommerce_app_ui/view/widget/items/custom_items_details.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: Container(
        padding: const EdgeInsets.only(top: 15),
        decoration: const BoxDecoration(
          color: AppColor.lightGrey2,
          borderRadius: BorderRadius.only(
            topLeft: Radius.circular(30),
            topRight: Radius.circular(30),
          ),
        ),
        child: CustomButtonCart(
          text: 'Add To Cart',
          onPressed: () {},
        ),
      ),
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            const CustomAppBarItemsDetails(),
            const SizedBox(height: 50),
            Image.asset(
              "assets/images/iphone.png",
              fit: BoxFit.cover,
            ),
            const SizedBox(height: 20),
            const CustomItemsDetails(),
          ],
        ),
      ),
    );
  }
}
