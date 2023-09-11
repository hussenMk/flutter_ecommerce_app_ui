import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';
import 'package:flutter_ecommerce_app_ui/constant/image_asset.dart';

class ItemsDetails extends StatelessWidget {
  const ItemsDetails({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(10),
        child: ListView(
          children: [
            Row(
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
                          icon: const Icon(Icons.arrow_back)),
                    ),
                    const SizedBox(width: 10),
                    Container(
                      decoration: BoxDecoration(
                        color: Theme.of(context).colorScheme.primary,
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: IconButton(
                        onPressed: () =>
                            Navigator.of(context).pushNamed("cart"),
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
            ),
            const SizedBox(height: 50),
            Hero(
              tag: "{controller.medicinesModel.id}",
              child: Image.asset(
                "assets/images/iphone.png",
                fit: BoxFit.cover,
              ),
            ),
            const SizedBox(height: 20),
            Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                const Text(
                  "Iphone 14",
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: AppColor.blue,
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  "The iPhone 14 features a 6.1-inch (155 mm) display with Super Retina XDR OLED technology at a resolution of 2532 × 1170 pixels and a pixel density of about 460 PPI with a refresh rate of 60 Hz.",
                  style: TextStyle(
                      fontWeight: FontWeight.bold, color: AppColor.spaceGrey),
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 5),
                const Text(
                  "3000 Rs",
                  style: TextStyle(
                      color: Color.fromARGB(255, 249, 177, 8),
                      fontWeight: FontWeight.bold,
                      fontSize: 20),
                ),
                const SizedBox(height: 20),
                Row(
                  children: [Container()],
                ),
                MaterialButton(
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8),
                  ),
                  padding:
                      const EdgeInsets.symmetric(horizontal: 130, vertical: 10),
                  onPressed: () {},
                  color: AppColor.blue,
                  textColor: AppColor.lightGrey,
                  child: const Text(
                    "Add To Cart",
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 15,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
