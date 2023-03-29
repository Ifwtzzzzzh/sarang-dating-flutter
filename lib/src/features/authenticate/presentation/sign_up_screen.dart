import 'package:flutter/material.dart';
import 'package:sarang_dating_app/src/common_widgets/banner_widget.dart';
import 'package:sarang_dating_app/src/common_widgets/custom_button_widget.dart';
import 'package:sarang_dating_app/src/common_widgets/custom_text_button_widget.dart';
import 'package:sarang_dating_app/src/common_widgets/custom_text_field_widget.dart';
import 'package:sarang_dating_app/src/features/authenticate/presentation/sign_up_age_job_screen.dart';
import 'package:sarang_dating_app/src/theme_manager/values_manager.dart';

class SignUpScreen extends StatefulWidget {
  static const String routeName = '/sign-up';
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();

  @override
  void dispose() {
    nameController.clear();
    emailController.clear();
    passwordController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: AppPadding.p50,
          horizontal: AppPadding.p24,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              //FROM BANNER WIDGET
              const BannerWidget(),
              //FROM CUSTOM TEXTFIELD WIDGET
              CustomTextFieldWidget(
                labelName: 'Complete Name',
                hintText: 'Write Your Name',
                controller: nameController,
              ),
              CustomTextFieldWidget(
                labelName: 'Email Address',
                hintText: 'Write Your Email Address',
                controller: emailController,
              ),
              CustomTextFieldWidget(
                labelName: 'Password',
                hintText: 'Write Your Security',
                controller: passwordController,
                isObsecure: true,
              ),
              const SizedBox(height: AppSize.s14),
              //FROM CUSTOM BUTTON WIDGET
              CustomButtonWidget(
                title: 'Get Started',
                onTap: () {
                  //NAVIGATE TO SIGN UP AGE JOB SCREEN
                  Navigator.pushNamed(context, SignUpAgeJobScreen.routeName);
                },
              ),
              //FROM CUSTOM TEXT BUTTON WIDGET
              CustomTextButtonWidget(
                title: 'Sign In to My Account',
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
