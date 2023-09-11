import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';

class CustomListCategoriesItems extends StatelessWidget {
  const CustomListCategoriesItems({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    int? selectedCat = 0;
    List categories = [
      {"name": "Laptops", "image": "assets/images/laptop.png"},
      {"name": "Mobiles", "image": "assets/images/phone.png"},
      {"name": "Accessories", "image": "assets/images/accessories.png"},
      {"name": "Speakers", "image": "assets/images/speakers.png"},
      {"name": "Power Banks", "image": "assets/images/power_banks.png"},
    ];
    return SizedBox(
      height: 35,
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 10),
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {},
                child: Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(8),
                      decoration: selectedCat == index
                          ? BoxDecoration(
                              color: AppColor.darkBlue,
                              borderRadius: BorderRadius.circular(8),
                            )
                          : BoxDecoration(
                              color: AppColor.lightGrey2,
                              borderRadius: BorderRadius.circular(8),
                            ),
                      child: Text(
                        "${categories[index]['name']}",
                        style: selectedCat == index
                            ? const TextStyle(
                                fontSize: 15, color: AppColor.white)
                            : const TextStyle(
                                fontSize: 15, color: AppColor.darkBlue),
                      ),
                    ),
                  ],
                ));
          }),
    );
  }
}
