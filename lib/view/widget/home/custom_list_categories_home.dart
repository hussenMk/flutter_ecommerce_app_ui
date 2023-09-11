import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';

class CustomListCategoriesHome extends StatelessWidget {
  const CustomListCategoriesHome({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List categories = [
      {"name": "Laptops", "image": "assets/images/laptop.png"},
      {"name": "Mobiles", "image": "assets/images/phone.png"},
      {"name": "Accessories", "image": "assets/images/accessories.png"},
      {"name": "Speakers", "image": "assets/images/speakers.png"},
      {"name": "Power Banks", "image": "assets/images/power_banks.png"},
    ];
    return SizedBox(
      height: 100,
      child: ListView.separated(
          separatorBuilder: (context, index) => const SizedBox(width: 11),
          itemCount: categories.length,
          scrollDirection: Axis.horizontal,
          itemBuilder: (context, index) {
            return InkWell(
                onTap: () {
                  Navigator.of(context).pushNamed('items');
                },
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    CircleAvatar(
                      backgroundColor: AppColor.lightGrey3,
                      radius: 30,
                      child: Image.asset(
                        "${categories[index]['image']}",
                        height: 40,
                      ),
                    ),
                    Text(
                      categories[index]['name'],
                      style: const TextStyle(
                          fontSize: 14, color: AppColor.darkBlue),
                    ),
                  ],
                ));
          }),
    );
  }
}
