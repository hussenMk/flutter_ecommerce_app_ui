import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';

class CustomCardCart extends StatelessWidget {
  final String name;
  final String price;
  final String count;
  final String imageName;
  final void Function()? onAdd;
  final void Function()? onRemove;
  const CustomCardCart(
      {super.key,
      required this.name,
      required this.price,
      required this.count,
      required this.imageName,
      required this.onAdd,
      required this.onRemove});

  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
      ),
      child: Row(
        children: [
          Expanded(
            flex: 2,
            child: SizedBox(
              height: 100,
              child: Image.asset(
                imageName,
              ),
            ),
          ),
          Expanded(
              flex: 3,
              child: Column(
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: AppColor.darkBlue,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    "$price Rs",
                    style: const TextStyle(
                      fontSize: 15,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 255, 179, 0),
                    ),
                  ),
                ],
              )),
          Expanded(
            child: Column(
              children: [
                IconButton(
                  onPressed: onAdd,
                  icon: const Icon(
                    Icons.add_circle_outline_rounded,
                    color: Color(0xff1d2b53),
                  ),
                ),
                Text(
                  count,
                ),
                IconButton(
                  onPressed: onRemove,
                  icon: const Icon(
                    Icons.remove_circle_outline,
                    color: Color(0xff1d2b53),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
