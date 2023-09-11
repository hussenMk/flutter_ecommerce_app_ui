import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';
import 'package:flutter_ecommerce_app_ui/view/widget/auth/custom_text_form_field.dart';

class CustomLoginForm extends StatelessWidget {
  const CustomLoginForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          const SizedBox(height: 30),
          const CustomTextFormFieldAuth(
            lable: Text("Enter your email"),
            prefixIcon: Icon(
              Icons.email,
              color: AppColor.blue,
            ),
            suffixIcon: SizedBox(),
          ),
          const CustomTextFormFieldAuth(
            lable: Text("Enter your password"),
            prefixIcon: Icon(
              Icons.lock,
              color: AppColor.blue,
            ),
            suffixIcon: Icon(
              Icons.remove_red_eye,
              color: AppColor.blue,
            ),
          ),
          InkWell(
            onTap: () {},
            child: const Text(
              "Forget Password ?",
              textAlign: TextAlign.end,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: AppColor.blue,
              ),
            ),
          ),
          const SizedBox(height: 15),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(8),
            onPressed: () {
              Navigator.of(context)
                  .pushNamedAndRemoveUntil("homeScreen", (route) => false);
            },
            color: AppColor.red,
            textColor: AppColor.lightGrey,
            child: const Text(
              "Login",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(8),
            onPressed: () {},
            color: AppColor.yellow,
            textColor: AppColor.lightGrey,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  "Login With Google",
                  style: TextStyle(fontWeight: FontWeight.bold),
                ),
                const SizedBox(width: 5),
                Image.asset(
                  "assets/images/google.png",
                  height: 20,
                )
              ],
            ),
          ),
          const SizedBox(height: 20),
          const Divider(
            indent: 10,
            endIndent: 10,
          ),
        ],
      ),
    );
  }
}
