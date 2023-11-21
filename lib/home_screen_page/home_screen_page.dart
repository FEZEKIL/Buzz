import '../home_screen_page/widgets/hotels_item_widget.dart';
import '../home_screen_page/widgets/listrectanglefour_item_widget.dart';
import '../home_screen_page/widgets/options_item_widget.dart';
import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/app_bar/appbar_image.dart';
import 'package:buzz/widgets/app_bar/appbar_title.dart';

import 'package:buzz/widgets/custom_search_view.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class HomeScreenPage extends StatelessWidget {
  TextEditingController searchBarController = TextEditingController();

  HomeScreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
              backgroundColor: ColorConstant.gray900,
                leadingWidth: 56,
                leading: AppbarImage(
                    height: getSize(32),
                    width: getSize(32),
                    svgPath: ImageConstant.imgGoogle,
                    margin: getMargin(left: 24),
                    onTap: () {
                      onTapGoogle(context);
                    }),
                title:
                    AppbarTitle(text: "BuzzApp", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgAlarm,
                      margin: getMargin(left: 24, top: 1, right: 3),
                      onTap: () {
                        onTapAlarm(context);
                      }),
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgBag,
                      margin: getMargin(left: 20, top: 1, right: 27),
                      onTap: () {
                        onTapBag(context);
                      })
                ]),
            body: SizedBox(
                width: size.width,
                child: SingleChildScrollView(
                    child: Padding(
                        padding: getPadding(left: 24, top: 34, bottom: 5),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Text("Hello, Fezekile 👋",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold32),
                              CustomSearchView(
                                  focusNode: FocusNode(),
                                  controller: searchBarController,
                                  hintText: "Search",
                                  margin: getMargin(top: 24, right: 24),
                                  prefix: Container(
                                      margin: getMargin(
                                          left: 20,
                                          top: 18,
                                          right: 12,
                                          bottom: 18),
                                      child: CustomImageView(
                                          svgPath: ImageConstant.imgSearch)),
                                  prefixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(56)),
                                  suffix: Container(
                                      margin: getMargin(
                                          left: 30,
                                          top: 21,
                                          right: 23,
                                          bottom: 21),
                                      decoration: BoxDecoration(
                                          border: Border.all(
                                              color: ColorConstant.cyan60001,
                                              width: getHorizontalSize(1),
                                              strokeAlign: strokeAlignCenter)),
                                      child: CustomImageView(
                                          svgPath:
                                              ImageConstant.imgMenuCyan60001)),
                                  suffixConstraints: BoxConstraints(
                                      maxHeight: getVerticalSize(56))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: getVerticalSize(68),
                                      child: ListView.separated(
                                          padding: getPadding(top: 30),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(12));
                                          },
                                          itemCount: 4,
                                          itemBuilder: (context, index) {
                                            return const OptionsItemWidget();
                                          }))),
                              Align(
                                  alignment: Alignment.centerRight,
                                  child: SizedBox(
                                      height: getVerticalSize(430),
                                      child: ListView.separated(
                                          padding: getPadding(top: 30),
                                          scrollDirection: Axis.horizontal,
                                          separatorBuilder: (context, index) {
                                            return SizedBox(
                                                height: getVerticalSize(24));
                                          },
                                          itemCount: 2,
                                          itemBuilder: (context, index) {
                                            return const HotelsItemWidget();
                                          }))),
                              Padding(
                                  padding: getPadding(top: 31, right: 24),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("Recently Booked",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanBold18),
                                        GestureDetector(
                                            onTap: () {
                                              onTapTxtSeeAll(context);
                                            },
                                            child: Padding(
                                                padding: getPadding(bottom: 2),
                                                child: Text("See All",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtUrbanistRomanBold16Cyan60001
                                                        .copyWith(
                                                            letterSpacing:
                                                                getHorizontalSize(
                                                                    0.2)))))
                                      ])),
                              Padding(
                                  padding: getPadding(top: 22, right: 24),
                                  child: ListView.separated(
                                      physics: const NeverScrollableScrollPhysics(),
                                      shrinkWrap: true,
                                      separatorBuilder: (context, index) {
                                        return SizedBox(
                                            height: getVerticalSize(24));
                                      },
                                      itemCount: 5,
                                      itemBuilder: (context, index) {
                                        return const ListrectanglefourItemWidget();
                                      }))
                            ]))))));
  }

  onTapTxtSeeAll(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.recentlyBookedScreen);
  }

  onTapGoogle(BuildContext context) async {
    var url = 'https://accounts.google.com/';
    // ignore: deprecated_member_use
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }

  onTapAlarm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationsScreen);
  }

  onTapBag(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myBookmarksScreen);
  }
}
