import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';
import 'package:flutter_ecommerce_app_ui/constant/image_asset.dart';

class Settings extends StatelessWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    bool isSwitch = false;
    return Container(
      padding: const EdgeInsets.all(15),
      child: Column(
        children: [
          const SizedBox(height: 20),
          Row(
            children: [
              const Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Settings",
                    style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColor.darkBlue),
                  ),
                  Text(
                    "You can control all settings",
                    style: TextStyle(fontSize: 15, color: AppColor.darkBlue),
                  ),
                ],
              ),
              const Spacer(),
              Image.asset(
                ImageAsset.smart,
                height: 100,
                width: 100,
              )
            ],
          ),
          const SizedBox(height: 10),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: const ListTile(
              title: Text(
                "Welcome Ahmed Ali",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: AppColor.red,
                ),
              ),
              subtitle: Text("ahmed_ali@gmail.com"),
            ),
          ),
          const SizedBox(height: 10),
          Card(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(15.0),
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                ListTile(
                  title: Text('6'),
                  leading: Image.asset(
                    ImageAsset.theme,
                    height: 30,
                  ),
                  // trailing: const Icon(CupertinoIcons.moon_stars),
                  trailing: Switch(
                    onChanged: (val) {},
                    value: isSwitch,
                  ),
                ),
                const Divider(),
                ListTile(
                  onTap: () {},
                  title: Text('7'),
                  leading: Image.asset(
                    ImageAsset.language,
                    height: 30,
                  ),
                ),
                const Divider(),
                ListTile(
                  onTap: () {},
                  title: Text('8'),
                  leading: Image.asset(
                    ImageAsset.help,
                    height: 30,
                  ),
                ),
                const Divider(),
                ListTile(
                  onTap: () {},
                  title: Text('9'),
                  leading: Image.asset(
                    ImageAsset.about,
                    height: 25,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 5),
          Container(
            child: Card(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15.0),
              ),
              child: ListTile(
                onTap: () {},
                title: Text(
                  '10',
                  style: const TextStyle(color: AppColor.red),
                ),
                leading: Image.asset(
                  ImageAsset.logout,
                  height: 25,
                  color: AppColor.red,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
