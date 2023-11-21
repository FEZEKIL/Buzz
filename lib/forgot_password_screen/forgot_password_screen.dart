import '../forgot_password_screen/widgets/listvolume_item_widget.dart';
import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/app_bar/appbar_image.dart';
import 'package:buzz/widgets/app_bar/appbar_title.dart';

import 'package:buzz/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ForgotPasswordScreen extends StatelessWidget {
  const ForgotPasswordScreen({super.key});

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
                    margin: getMargin(left: 24, top: 11, bottom: 13),
                    onTap: () {
                      onTapArrowleft1(context);
                    }),
                title: AppbarTitle(
                    text: "Forgot Password", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 39, right: 24, bottom: 39),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage,
                          height: getSize(240),
                          width: getSize(240),
                          margin: getMargin(top: 19)),
                      Container(
                          width: getHorizontalSize(371),
                          margin: getMargin(top: 40, right: 8),
                          child: Text(
                              "Select which contact details should we use to reset your password",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRegular16WhiteA700
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.2)))),
                      Padding(
                          padding: getPadding(top: 21),
                          child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(24));
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return const ListvolumeItemWidget();
                              }))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(55),
                text: "Continue",
                margin: getMargin(left: 24, right: 24, bottom: 48),
                variant: ButtonVariant.OutlineGreenA7003f,
                onTap: () {
                  onTapContinue(context);
                })));
  }

  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordTypeOtpScreen);
  }

  onTapArrowleft1(BuildContext context) {
    Navigator.pop(context);
  }
}
