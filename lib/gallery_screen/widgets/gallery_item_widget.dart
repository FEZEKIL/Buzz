import 'package:buzz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class GalleryItemWidget extends StatelessWidget {
  const GalleryItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomImageView(
      imagePath: ImageConstant.imgRectangle10140x182,
      height: getVerticalSize(
        140,
      ),
      width: getHorizontalSize(
        182,
      ),
      radius: BorderRadius.circular(
        getHorizontalSize(
          12,
        ),
      ),
    );
  }
}
