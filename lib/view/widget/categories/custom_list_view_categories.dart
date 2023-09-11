import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';
import 'package:flutter_ecommerce_app_ui/constant/image_asset.dart';

class CustomListViewCategories extends StatelessWidget {
  const CustomListViewCategories({super.key});

  @override
  Widget build(BuildContext context) {
    List categories = [
      {"name": "Laptops", "image": "assets/images/laptop.png"},
      {"name": "Mobiles", "image": "assets/images/phone.png"},
      {"name": "Accessories", "image": "assets/images/accessories.png"},
      {"name": "Speakers", "image": "assets/images/speakers.png"},
      {"name": "Power Banks", "image": "assets/images/power_banks.png"},
    ];
    return ListView.separated(
      separatorBuilder: (context, index) => const SizedBox(height: 10),
      physics: const NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      itemCount: categories.length,
      itemBuilder: (context, index) {
        return InkWell(
          onTap: () {},
          child: Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Container(
              padding: const EdgeInsets.all(10),
              child: Row(
                children: [
                  Image.asset(
                    ImageAsset.tshirt,
                    height: 70,
                    fit: BoxFit.fill,
                  ),
                  const SizedBox(width: 20),
                  Text(
                    "${categories[index]}",
                    style:
                        const TextStyle(fontSize: 15, color: AppColor.darkBlue),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
