import 'package:flutter/material.dart';
import 'package:sarang_dating_app/src/common_widgets/banner_widget.dart';
import 'package:sarang_dating_app/src/common_widgets/custom_button_widget.dart';
import 'package:sarang_dating_app/src/common_widgets/custom_text_field_widget.dart';
import 'package:sarang_dating_app/src/theme_manager/values_manager.dart';

class SignUpAgeJobScreen extends StatefulWidget {
  static const String routeName = '/sign-up-age-job';
  const SignUpAgeJobScreen({super.key});

  @override
  State<SignUpAgeJobScreen> createState() => _SignUpAgeJobScreenState();
}

class _SignUpAgeJobScreenState extends State<SignUpAgeJobScreen> {
  final jobController = TextEditingController();
  final ageController = TextEditingController();

  @override
  void dispose() {
    jobController.clear();
    ageController.clear();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: AppPadding.p24,
          vertical: AppPadding.p50,
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              const BannerWidget(),
              CustomTextFieldWidget(
                labelName: 'Accupation',
                hintText: 'Write Your Occupation',
                controller: jobController,
              ),
              CustomTextFieldWidget(
                labelName: 'Age',
                hintText: 'Write Your Age',
                controller: jobController,
              ),
              const SizedBox(height: 117.0),
              CustomButtonWidget(
                title: 'Continous Sign Up',
                onTap: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
