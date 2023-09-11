import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';
import 'package:flutter_ecommerce_app_ui/view/widget/home/custom_container_home.dart';

import '../../widget/home/custom_app_bar_home.dart';
import '../../widget/home/custom_list_categories_home.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    List toopSelling = [
      {
        "name": "Iphone 14 Pro",
        "price": "3799",
        "image": "assets/images/iphone.png"
      },
      {
        "name": "MacBook Pro M2",
        "price": "11000",
        "image": "assets/images/macbook.png"
      },
    ];
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            CustomAppBarHome(
              onPressedDrawer: () => Navigator.of(context).pushNamed('cart'),
              onPressedSearch: () {},
            ),
            const SizedBox(height: 5),
            const CustomContainerHome(),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 235, 235, 235),
                  ),
                  child: const Text(
                    "Categories",
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColor.red,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            const CustomListCategoriesHome(),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: const Color.fromARGB(255, 235, 235, 235),
                  ),
                  child: const Text(
                    "Best Selling",
                    style: TextStyle(
                        fontSize: 16,
                        color: AppColor.red,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            GridView.builder(
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                childAspectRatio: 0.8,
                crossAxisSpacing: 20,
              ),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: toopSelling.length,
              itemBuilder: (context, index) {
                return InkWell(
                  onTap: () {
                    Navigator.of(context).pushNamed('itemsDetails');
                  },
                  child: Card(
                    color: AppColor.lightGrey3,
                    shape: const RoundedRectangleBorder(
                      borderRadius: BorderRadius.all(
                        Radius.circular(5),
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          '${toopSelling[index]['name']}',
                          style: const TextStyle(
                            fontSize: 15,
                            fontWeight: FontWeight.bold,
                            color: AppColor.blue,
                          ),
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(
                            horizontal: 10,
                            vertical: 25,
                          ),
                          child: Image.asset(
                            '${toopSelling[index]['image']}',
                            height: 100,
                            fit: BoxFit.cover,
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceAround,
                          children: [
                            Image.asset(
                              "assets/images/add_cart.png",
                              height: 25,
                            ),
                            const SizedBox(width: 10),
                            Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 5),
                              decoration: BoxDecoration(
                                  color: AppColor.lightGrey2,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Text(
                                '${toopSelling[index]['price']} \Rs',
                                style: const TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Color.fromARGB(255, 247, 182, 29),
                                ),
                              ),
                            )
                          ],
                        )
                      ],
                    ),
                  ),
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
