import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';

class CustomContainerCart extends StatelessWidget {
  const CustomContainerCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(bottom: 5),
      decoration: BoxDecoration(
        color: AppColor.lightGrey2,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.all(5),
            decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(8), topRight: Radius.circular(8)),
              color: AppColor.blue,
            ),
            child: const Text(
              "You have 2 items in the cart ",
              style: TextStyle(color: AppColor.white),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              const Text(
                'Total Price: 10000 Rs',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColor.blue,
                ),
              ),
              ElevatedButton(
                onPressed: () => Navigator.of(context).pushNamed('checkout'),
                style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(
                    AppColor.blue,
                  ),
                ),
                child: const Row(
                  children: [
                    Text(
                      "check out",
                      style: TextStyle(
                        color: AppColor.white,
                      ),
                    ),
                    SizedBox(width: 10),
                    Icon(
                      Icons.keyboard_double_arrow_right,
                      color: AppColor.white,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
