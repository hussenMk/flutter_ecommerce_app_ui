import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/view/widget/items/custom_app_barItems.dart';
import '../widget/items/custom_grid_items.dart';
import '../widget/items/custom_list_categories_items.dart';

class Items extends StatelessWidget {
  const Items({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: const [
            CustomAppBarItems(),
            SizedBox(height: 10),
            CustomListCategoriesItems(),
            SizedBox(height: 30),
            CustomGridItems(),
          ],
        ),
      ),
    );
  }
}
