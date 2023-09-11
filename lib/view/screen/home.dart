import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/view/widget/home/custom_container_home.dart';
import 'package:flutter_ecommerce_app_ui/view/widget/home/custom_grid_view_top_selling_home.dart';
import 'package:flutter_ecommerce_app_ui/view/widget/home/custom_title_home.dart';
import '../widget/home/custom_app_bar_home.dart';
import '../widget/home/custom_list_categories_home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            CustomAppBarHome(
              onPressedDrawer: () => Navigator.of(context).pushNamed('cart'),
            ),
            const SizedBox(height: 5),
            const CustomContainerHome(),
            const SizedBox(height: 20),
            const CustomTitleHome(
              txt: 'Categories',
            ),
            const SizedBox(height: 15),
            const CustomListCategoriesHome(),
            const SizedBox(height: 20),
            const CustomTitleHome(
              txt: 'Best Selling',
            ),
            const SizedBox(height: 15),
            const CustomGridViewTopSellingHome(),
          ],
        ),
      ),
    );
  }
}
