import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';

class CustomTitleHome extends StatelessWidget {
  final String txt;
  const CustomTitleHome({
    super.key,
    required this.txt,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Container(
          padding: const EdgeInsets.symmetric(
            horizontal: 10,
            vertical: 3,
          ),
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(5),
            color: const Color.fromARGB(255, 235, 235, 235),
          ),
          child: Text(
            txt,
            style: const TextStyle(
                fontSize: 16, color: AppColor.red, fontWeight: FontWeight.bold),
          ),
        ),
      ],
    );
  }
}
