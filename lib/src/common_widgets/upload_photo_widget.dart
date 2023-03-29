import 'package:flutter/material.dart';
import 'package:sarang_dating_app/src/theme_manager/asset_image_icon_manager.dart';
import 'package:sarang_dating_app/src/theme_manager/color_manager.dart';

class UploadPhotoWIdget extends StatelessWidget {
  const UploadPhotoWIdget({super.key});

  @override
  Widget build(BuildContext context) {
    return Stack(
      alignment: Alignment.bottomCenter,
      clipBehavior: Clip.none,
      children: [
        Container(
          width: 180.0,
          height: 180.0,
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(
              color: ColorManager.secondary,
              width: 8.0,
              strokeAlign: StrokeAlign.outside,
            ),
          ),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(100),
            child: const Image(
              image: AssetImage(
                '${AssetImageIconManager.assetPath}/profile_icon.png',
              ),
              fit: BoxFit.contain,
            ),
          ),
        ),
        const Positioned(
          bottom: -25.0,
          child: SizedBox(
            width: 50.0,
            height: 50.0,
            child: Image(
              image: AssetImage(
                '${AssetImageIconManager.assetPath}/icon_add_color.png',
              ),
            ),
          ),
        ),
      ],
    );
  }
}
