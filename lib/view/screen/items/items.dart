import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/image_asset.dart';

import '../../widget/items/custom_grid_items.dart';
import '../../widget/items/custom_list_categories_items.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: () => Navigator.of(context).pop(),
                          icon: const Icon(Icons.arrow_back),
                        ),
                      ),
                      const SizedBox(width: 10),
                      Container(
                        decoration: BoxDecoration(
                          color: Theme.of(context).colorScheme.primary,
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: IconButton(
                          onPressed: () {},
                          icon: const Icon(
                            Icons.search,
                            color: Color(0xff1d2b53),
                          ),
                        ),
                      ),
                    ],
                  ),

                  Container(
                    decoration: BoxDecoration(
                      color: Theme.of(context).colorScheme.primary,
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: IconButton(
                      onPressed: () {},
                      icon: Image.asset(
                        ImageAsset.cart,
                        color: const Color(0xff1d2b53),
                        height: 25,
                      ),
                    ),
                  ),

                  // Search
                ],
              ),
            ),
            const SizedBox(height: 10),
            const CustomListCategoriesItems(),
            const SizedBox(height: 30),
            const CustomGridItems(),
          ],
        ),
      ),
    );
  }
}
