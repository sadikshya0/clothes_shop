import 'package:clothes_shop/utils/colors.dart';
import 'package:clothes_shop/utils/custom_text_styles.dart';
import 'package:clothes_shop/utils/validator.dart';
import 'package:clothes_shop/widgets/custom/custom_textfield.dart';
import 'package:flutter/material.dart';

class LoginScreen extends StatelessWidget {
  final c = Get.put(LoginScreenController());
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Column(
          children: [
            Text(
              "Login Screen",
              style: CustomTextStyles.f10W300(color: AppColors.primaryColor),
            ),
            Form(
              key: c.formKey,
              child: Column(
                children: [
                  CustomTextField(
                    controller: c.emailController,
                    validator: Validators.checkEmailField,
                    hint: "Enter your email",
                    textInputAction: TextInputAction.next,
                    textInputType: TextInputType.emailAddress,
                  ),
                  Obx(
                    () => CustomPasswordField(
                      validator: Validators.checkPasswordField,
                      hint: "Password",
                      eye: c.passwordObscure.value,
                      onEyeClick: c.onEyeCLick,
                      controller: c.passwordController,
                      textInputAction: TextInputAction.done,
                    ),
                  ),

                  TextButton(
                    onPressed: () {
                      
                    },
                    child: Text(
                      "Forgot Password?",
                      style:
                          CustomTextStyles.f12W700,
                          color: AppColors.primaryColor,
                    ),
                  ),

                  CustomElevatedButton(
                    onPressed: () {

                    },
                    text: "Login",
                  ),

                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
