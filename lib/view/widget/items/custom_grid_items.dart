import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';

class CustomGridItems extends StatelessWidget {
  const CustomGridItems({super.key});

  @override
  Widget build(BuildContext context) {
    List items = [
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
    return GridView.builder(
        itemCount: items.length,
        shrinkWrap: true,
        physics: const NeverScrollableScrollPhysics(),
        gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 0.8,
            crossAxisSpacing: 5,
            mainAxisSpacing: 5),
        itemBuilder: (context, index) {
          return InkWell(
            onTap: () {
              Navigator.of(context).pushNamed("itemsDetails");
            },
            child: Card(
              child: Padding(
                padding: const EdgeInsets.all(10),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Hero(
                      tag: "{medicinesModel.id}",
                      child: Image.asset(
                        '${items[index]['image']}',
                        height: 100,
                        fit: BoxFit.fill,
                      ),
                    ),
                    Text(
                      '${items[index]['name']}',
                      style: const TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold,
                          color: AppColor.darkBlue),
                    ),
                    Text(
                      "${items[index]['price']} \RS",
                      style: const TextStyle(
                        fontSize: 17,
                        color: Color.fromARGB(255, 250, 181, 21),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          );
        });
  }
}
