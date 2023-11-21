import '../my_bookmarks_screen/widgets/my_bookmarks_item_widget.dart';
import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/app_bar/appbar_image.dart';
import 'package:buzz/widgets/app_bar/appbar_title.dart';

import 'package:flutter/material.dart';
import 'package:buzz/bookmark_removal_bottomsheet/bookmark_removal_bottomsheet.dart';

class MyBookmarksScreen extends StatelessWidget {
  const MyBookmarksScreen({super.key});

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
                      onTapArrowleft7(context);
                    }),
                title: AppbarTitle(
                    text: "My Bookmarks", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgMenu1,
                      margin: getMargin(left: 24, top: 10, right: 13)),
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgGrid,
                      margin: getMargin(left: 20, top: 10, right: 37))
                ]),
            body: Padding(
                padding: getPadding(left: 24, top: 28, right: 24),
                child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                        mainAxisExtent: getVerticalSize(281),
                        crossAxisCount: 2,
                        mainAxisSpacing: getHorizontalSize(24),
                        crossAxisSpacing: getHorizontalSize(24)),
                    physics: const NeverScrollableScrollPhysics(),
                    itemCount: 6,
                    itemBuilder: (context, index) {
                      return MyBookmarksItemWidget(onTapImgBookmark: () {
                        onTapImgBookmark(context);
                      });
                    }))));
  }

  onTapImgBookmark(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => const BookmarkRemovalBottomsheet(),
        isScrollControlled: true);
  }

  onTapArrowleft7(BuildContext context) {
    Navigator.pop(context);
  }
}
