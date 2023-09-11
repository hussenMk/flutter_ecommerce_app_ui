import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';
import 'package:flutter_ecommerce_app_ui/view/widget/cart/custom_button_cart.dart';

class Checkout extends StatelessWidget {
  const Checkout({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColor.darkBlue,
        backgroundColor: Colors.grey[100],
        elevation: 0,
        title: const Text(
          "Checkout",
          style:
              TextStyle(color: AppColor.darkBlue, fontWeight: FontWeight.bold),
        ),
        centerTitle: true,
      ),
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
          text: 'Confirm Payment',
          onPressed: () {},
        ),
      ),
      body: Container(
        margin: const EdgeInsets.all(15),
        child: ListView(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          children: [
            const SizedBox(
              height: 20,
            ),
            InkWell(
              child: Card(
                color: AppColor.lightGrey3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/visa.png"),
                    ),
                    border: Border.all(
                      color: AppColor.blue,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              child: Card(
                color: AppColor.lightGrey3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/paypal.png"),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              child: Card(
                color: AppColor.lightGrey3,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10)),
                child: Container(
                  height: 80,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10),
                    image: const DecorationImage(
                      image: AssetImage("assets/images/apple_pay.png"),
                    ),
                    // border: Border.all(
                    //     color: controller.paymentMethod == "3"
                    //         ? AppColor.blue2
                    //         : AppColor.darkBlue),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
