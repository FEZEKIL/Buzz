import '../gallery_screen/widgets/gallery_item_widget.dart';
import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/app_bar/appbar_image.dart';
import 'package:buzz/widgets/app_bar/appbar_title.dart';

import 'package:flutter/material.dart';

class GalleryScreen extends StatelessWidget {
  const GalleryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            appBar: AppBar(
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(28),
                    width: getSize(28),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 10, bottom: 13),
                    onTap: () {
                      onTapArrowleft9(context);
                    }),
                title: AppbarTitle(
                    text: "Gallery Hotel Photos", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgClock,
                      margin:
                          getMargin(left: 24, top: 10, right: 24, bottom: 13))
                ]),
            body: Padding(
                padding: getPadding(left: 24, top: 28, right: 24),
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(141),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(16),
                        crossAxisSpacing: getHorizontalSize(16)),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 10,
                    itemBuilder: (context, index) {
                      return const GalleryItemWidget();
                    }))));
  }

  onTapArrowleft9(BuildContext context) {
    Navigator.pop(context);
  }
}
