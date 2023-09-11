import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';
import 'package:flutter_ecommerce_app_ui/view/widget/auth/custom_text_form_field.dart';

class CustomSignUpForm extends StatelessWidget {
  const CustomSignUpForm({super.key});

  @override
  Widget build(BuildContext context) {
    return Form(
      child: ListView(
        physics: const NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        children: [
          const SizedBox(height: 30),
          const CustomTextFormFieldAuth(
            lable: Text("Enter your username"),
            prefixIcon: Icon(
              Icons.person,
              color: AppColor.blue,
            ),
            suffixIcon: SizedBox(),
          ),
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
          const SizedBox(height: 10),
          MaterialButton(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(8),
            ),
            padding: const EdgeInsets.all(8),
            onPressed: () => Navigator.of(context).pushNamed('auth'),
            color: AppColor.red,
            textColor: AppColor.lightGrey,
            child: const Text(
              "SignUp",
              style: TextStyle(
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 15),
          const Divider(
            indent: 10,
            endIndent: 10,
          ),
          const SizedBox(height: 20),
        ],
      ),
    );
  }
}
