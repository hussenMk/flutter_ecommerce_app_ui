import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';

import '../../widget/cart/custom_card_cart.dart';

class Cart extends StatelessWidget {
  const Cart({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List data = [
      {
        "name": "Iphone 15",
        "price": "3000",
        "count": "1",
        "image": "assets/images/iphone.png"
      },
      {
        "name": "MacBook Pro",
        "price": "7000",
        "count": "1",
        "image": "assets/images/macbook.png"
      },
    ];
    return Scaffold(
      appBar: AppBar(
        foregroundColor: AppColor.darkBlue,
        elevation: 0,
        title: const Text(
          "Cart",
          style: TextStyle(
            color: AppColor.darkBlue,
            fontWeight: FontWeight.bold,
          ),
        ),
        centerTitle: true,
      ),
      body: Container(
        margin: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Container(
              padding: const EdgeInsets.only(bottom: 5),
              decoration: BoxDecoration(
                color: AppColor.lightGrey2,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Column(
                children: [
                  Container(
                    width: double.infinity,
                    padding: const EdgeInsets.all(5),
                    decoration: const BoxDecoration(
                      borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(8),
                          topRight: Radius.circular(8)),
                      color: AppColor.blue,
                    ),
                    child: const Text(
                      "لديك 4 منتجات في السلة ",
                      style: TextStyle(color: AppColor.white),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  const SizedBox(height: 10),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      const Text(
                        'Total Price: 10000 Rs',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: AppColor.blue,
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () =>
                            Navigator.of(context).pushNamed('checkout'),
                        style: ButtonStyle(
                          backgroundColor: MaterialStateProperty.all(
                            AppColor.blue,
                          ),
                        ),
                        child: const Row(
                          children: [
                            Text(
                              "check out",
                              style: TextStyle(
                                color: AppColor.white,
                              ),
                            ),
                            SizedBox(width: 10),
                            Icon(
                              Icons.keyboard_double_arrow_right,
                              color: AppColor.white,
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 15),
            ...List.generate(
              data.length,
              (index) => CustomCardCart(
                name: "${data[index]['name']}",
                price: "${data[index]['price']}",
                count: "${data[index]['count']}",
                imageName: "${data[index]['image']}",
                onAdd: () {},
                onRemove: () {},
              ),
            )
          ],
        ),
      ),
    );
  }
}
