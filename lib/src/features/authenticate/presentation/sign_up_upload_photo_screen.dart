import 'package:flutter/material.dart';
import 'package:sarang_dating_app/src/common_widgets/custom_button_widget.dart';
import 'package:sarang_dating_app/src/common_widgets/custom_text_button_widget.dart';
import 'package:sarang_dating_app/src/common_widgets/logo_and_tagline_widget.dart';
import 'package:sarang_dating_app/src/common_widgets/upload_photo_widget.dart';
import 'package:sarang_dating_app/src/features/likes_you/presentation/explore_people_screen.dart';
import 'package:sarang_dating_app/src/theme_manager/font_manager.dart';
import 'package:sarang_dating_app/src/theme_manager/style_manager.dart';
import 'package:sarang_dating_app/src/theme_manager/values_manager.dart';

class SignUpUploadPhotoScreen extends StatefulWidget {
  static const routeName = '/sign-up-upload-photo';
  const SignUpUploadPhotoScreen({super.key});

  @override
  State<SignUpUploadPhotoScreen> createState() =>
      _SignUpUploadPhotoScreenState();
}

class _SignUpUploadPhotoScreenState extends State<SignUpUploadPhotoScreen> {
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
              const LogoAndTaglineWidget(),
              const SizedBox(height: AppSize.s50),
              const UploadPhotoWIdget(),
              const SizedBox(height: 53),

              // NAME
              Text(
                'Nosa Rahmanda',
                style: getWhiteTextStyle(
                  fontSize: FontSizeManager.f22,
                  fontWeight: FontWeightManager.semiBold,
                ),
              ),

              // DESCRIPTION
              const SizedBox(height: AppSize.s4),
              Text(
                '18, Mobile Apps Dev',
                style: getBlack60TextStyle(),
              ),

              // UPDATE MY PROFILE
              const SizedBox(height: 200),
              CustomButtonWidget(
                title: 'Update My Profile',
                onTap: () {},
              ),

              // SKIP FOR NOW
              const SizedBox(height: AppSize.s8),
              CustomTextButtonWidget(
                title: 'Skip for Now',
                onPressed: () {
                  Navigator.pushNamed(
                    context,
                    ExplorePeopleScreen.routeName,
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
