import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';

class CustomLogoAuth extends StatelessWidget {
  const CustomLogoAuth({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return CircleAvatar(
      backgroundColor: AppColor.blue,
      maxRadius: 60,
      child: Container(
        padding: const EdgeInsets.all(14),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(60),
          color: Colors.grey[300],
        ),
        child: Image.asset(
          "assets/images/smart.png",
          height: 80,
          width: 80,
        ),
      ),
    );
  }
}
