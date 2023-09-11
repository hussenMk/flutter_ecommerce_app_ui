import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';
import 'package:flutter_ecommerce_app_ui/constant/image_asset.dart';

class CustomAppBarItemsDetails extends StatelessWidget {
  const CustomAppBarItemsDetails({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            Container(
              decoration: BoxDecoration(
                color: AppColor.lightGrey3,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                  onPressed: () => Navigator.of(context).pop(),
                  icon: const Icon(Icons.arrow_back)),
            ),
            const SizedBox(width: 10),
            Container(
              decoration: BoxDecoration(
                color: AppColor.lightGrey3,
                borderRadius: BorderRadius.circular(10),
              ),
              child: IconButton(
                onPressed: () => Navigator.of(context).pushNamed("cart"),
                icon: Image.asset(
                  ImageAsset.cart,
                  color: const Color(0xff1d2b53),
                  height: 25,
                ),
              ),
            ),
          ],
        ),
        const SizedBox(width: 50),
        Image.asset(
          "assets/images/smart.png",
          height: 60,
        ),

        // Search
      ],
    );
  }
}
