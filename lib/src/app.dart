import 'package:flutter/material.dart';
import 'package:sarang_dating_app/src/features/authenticate/presentation/sign_up_age_job_screen.dart';
import 'package:sarang_dating_app/src/features/authenticate/presentation/sign_up_screen.dart';
import 'package:sarang_dating_app/src/features/authenticate/presentation/sign_up_upload_photo_screen.dart';
import 'package:sarang_dating_app/src/features/likes_you/presentation/explore_people_screen.dart';
import 'package:sarang_dating_app/src/features/likes_you/presentation/people_loved_screen.dart';
import 'package:sarang_dating_app/src/features/likes_you/presentation/people_profile_screen.dart';
import 'package:sarang_dating_app/src/theme_manager/theme_data_manager.dart';

class AppScreen extends StatelessWidget {
  const AppScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Material App',
      //FROM THEME DATA MANAGER
      theme: getApplicationThemeData(),
      //FROM SIGN UP SCREEN
      initialRoute: SignUpScreen.routeName,
      routes: {
        SignUpScreen.routeName: (context) => const SignUpScreen(),
        SignUpAgeJobScreen.routeName: (context) => const SignUpAgeJobScreen(),
        SignUpUploadPhotoScreen.routeName: (context) =>
            const SignUpUploadPhotoScreen(),
        ExplorePeopleScreen.routeName: (context) => const ExplorePeopleScreen(),
        PeopleLovedScreen.routeName: (context) => const PeopleLovedScreen(),
        PeopleProfileScreen.routeName: (context) => const PeopleProfileScreen(),
      },
    );
  }
}
