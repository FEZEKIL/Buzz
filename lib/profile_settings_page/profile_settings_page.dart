import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/app_bar/appbar_image.dart';
import 'package:buzz/widgets/app_bar/appbar_title.dart';

import 'package:buzz/widgets/custom_switch.dart';
import 'package:flutter/material.dart';
import 'package:buzz/logout_bottomsheet/logout_bottomsheet.dart';

// ignore_for_file: must_be_immutable
class ProfileSettingsPage extends StatelessWidget {
  bool isSelectedSwitch = false;

  ProfileSettingsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            appBar: AppBar(
                leadingWidth: 56,
                backgroundColor: ColorConstant.gray900,
                leading: AppbarImage(
                    height: getSize(32),
                    width: getSize(32),
                    svgPath: ImageConstant.imgGoogle,
                    margin: getMargin(left: 24, top: 9, bottom: 9),
                    onTap: () {
                      onTapGoogle2(context);
                    }),
                title:
                    AppbarTitle(text: "Profile", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgClock,
                      margin:
                          getMargin(left: 24, top: 11, right: 24, bottom: 11))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 30, right: 24, bottom: 30),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: SizedBox(
                              height: getSize(120),
                              width: getSize(120),
                              child: Stack(
                                  alignment: Alignment.bottomRight,
                                  children: [
                                    CustomImageView(
                                        imagePath:
                                            ImageConstant.imgEllipse120x1201,
                                        height: getSize(120),
                                        width: getSize(120),
                                        radius: BorderRadius.circular(
                                            getHorizontalSize(60)),
                                        alignment: Alignment.center),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgEdit,
                                        height: getSize(30),
                                        width: getSize(30),
                                        alignment: Alignment.bottomRight)
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 11),
                              child: Text("Fezekile Gxalaba",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold24))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 10),
                              child: Text("fezekile@gmail.com",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistSemiBold14WhiteA700
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2))))),
                      GestureDetector(
                          onTap: () {
                            onTapRowuser(context);
                          },
                          child: Padding(
                              padding: getPadding(top: 60),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgUser28x28,
                                    height: getSize(28),
                                    width: getSize(28)),
                                Padding(
                                    padding:
                                        getPadding(left: 20, top: 2, bottom: 3),
                                    child: Text("Edit Profile",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))))
                              ]))),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgComputer28x28,
                                height: getSize(28),
                                width: getSize(28)),
                            Padding(
                                padding: getPadding(left: 20, top: 5),
                                child: Text("Payment",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold18
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2))))
                          ])),
                      GestureDetector(
                          onTap: () {
                            onTapRowalarm(context);
                          },
                          child: Padding(
                              padding: getPadding(top: 30),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgAlarm,
                                    height: getSize(28),
                                    width: getSize(28)),
                                Padding(
                                    padding:
                                        getPadding(left: 20, top: 2, bottom: 3),
                                    child: Text("Notifications",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))))
                              ]))),
                      GestureDetector(
                          onTap: () {
                            onTapRowcheckmark(context);
                          },
                          child: Padding(
                              padding: getPadding(top: 30),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgCheckmark28x28,
                                    height: getSize(28),
                                    width: getSize(28)),
                                Padding(
                                    padding: getPadding(left: 20, top: 5),
                                    child: Text("Security",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold18
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))))
                              ]))),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgInfo,
                                height: getSize(28),
                                width: getSize(28)),
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 5, bottom: 1),
                                child: Text("Help",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold18
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2))))
                          ])),
                      Padding(
                          padding: getPadding(top: 30),
                          child: Row(children: [
                            CustomImageView(
                                svgPath: ImageConstant.imgEye,
                                height: getSize(28),
                                width: getSize(28)),
                            Padding(
                                padding:
                                    getPadding(left: 20, top: 2, bottom: 3),
                                child: Text("Dark Theme",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold18
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2)))),
                            const Spacer(),
                            CustomSwitch(
                                margin: getMargin(top: 2, bottom: 2),
                                value: isSelectedSwitch,
                                onChanged: (value) {
                                  isSelectedSwitch = value;
                                })
                          ])),
                      GestureDetector(
                          onTap: () {
                            onTapRowrefresh(context);
                          },
                          child: Padding(
                              padding: getPadding(top: 30, bottom: 5),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgRefresh,
                                    height: getSize(28),
                                    width: getSize(28)),
                                Padding(
                                    padding: getPadding(left: 20, top: 5),
                                    child: Text("Logout",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistSemiBold18RedA200
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))))
                              ])))
                    ]))));
  }

  onTapRowuser(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.editProfileScreen);
  }

  onTapRowalarm(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.notificationSettingsScreen);
  }

  onTapRowcheckmark(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.securityScreen);
  }

  onTapRowrefresh(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => const LogoutBottomsheet(),
        isScrollControlled: true);
  }

  onTapGoogle2(BuildContext context) async {
    var url = 'https://accounts.google.com/';
    // ignore: deprecated_member_use
    if (!await launch(url)) {
      throw 'Could not launch https://accounts.google.com/';
    }
  }
}
