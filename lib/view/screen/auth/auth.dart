import 'package:flutter/material.dart';
import 'package:flutter_ecommerce_app_ui/constant/colors.dart';
import 'package:flutter_ecommerce_app_ui/view/widget/auth/custom_login_form.dart';
import 'package:flutter_ecommerce_app_ui/view/widget/auth/custom_logo_auth.dart';
import 'package:flutter_ecommerce_app_ui/view/widget/auth/custom_signup_form.dart';

class Auth extends StatefulWidget {
  const Auth({super.key});

  @override
  State<Auth> createState() => _AuthState();
}

class _AuthState extends State<Auth> {
  int selected = 1;

  Widget customRadio(String text, int index) {
    return MaterialButton(
      padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 5),
      onPressed: () {
        setState(() {
          selected = index;
        });
      },
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(5),
        side: BorderSide(
            color: (selected == index) ? AppColor.red : AppColor.blue),
      ),
      child: Text(
        text,
        style: TextStyle(
            fontSize: 15,
            fontWeight: FontWeight.bold,
            color: (selected == index) ? AppColor.red : AppColor.blue),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        child: ListView(
          physics: const NeverScrollableScrollPhysics(),
          shrinkWrap: true,
          children: [
            const SizedBox(height: 50),
            const CustomLogoAuth(),
            const SizedBox(height: 50),
            Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    customRadio('Login', 1),
                    const SizedBox(width: 10),
                    customRadio('SignUp', 2)
                  ],
                ),
              ],
            ),
            selected == 1 ? const CustomLoginForm() : const CustomSignUpForm(),
          ],
        ),
      ),
    );
  }
}
