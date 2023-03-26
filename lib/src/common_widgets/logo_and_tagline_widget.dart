import 'package:flutter/material.dart';
import 'package:sarang_dating_app/src/common_widgets/logo_widget.dart';
import 'package:sarang_dating_app/src/theme_manager/style_manager.dart';
import 'package:sarang_dating_app/src/theme_manager/values_manager.dart';

class LogoAndTaglineWidget extends StatelessWidget {
  const LogoAndTaglineWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        LogoWidget(),
        SizedBox(
          height: AppSize.s6,
        ),
        Text(
          'Find Your Perfect Love.',
          style: getWhiteTextStyle(),
        ),
      ],
    );
  }
}
