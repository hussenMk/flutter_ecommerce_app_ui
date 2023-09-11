import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';

class CustomItemsDetails extends StatelessWidget {
  const CustomItemsDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        const Text(
          "Iphone 14",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.bold,
            color: AppColor.blue,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          "The iPhone 14 features a 6.1-inch (155 mm) display with Super Retina XDR OLED technology at a resolution of 2532 × 1170 pixels and a pixel density of about 460 PPI with a refresh rate of 60 Hz.",
          style:
              TextStyle(fontWeight: FontWeight.bold, color: AppColor.spaceGrey),
          textAlign: TextAlign.center,
        ),
        const SizedBox(height: 20),
        const Text(
          "3000 Rs",
          style: TextStyle(
              color: Color.fromARGB(255, 249, 177, 8),
              fontWeight: FontWeight.bold,
              fontSize: 22),
        ),
        const SizedBox(height: 20),
        Row(
          children: [Container()],
        ),
      ],
    );
  }
}
