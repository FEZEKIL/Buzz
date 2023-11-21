import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class LogoutBottomsheet extends StatelessWidget {
  const LogoutBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: SizedBox(
            width: double.maxFinite,
            child: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 8, right: 24, bottom: 8),
                decoration: AppDecoration.outlineGray8002
                    .copyWith(borderRadius: BorderRadiusStyle.customBorderTL40),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgFrameGray700,
                          height: getVerticalSize(3),
                          width: getHorizontalSize(38)),
                      Padding(
                          padding: getPadding(top: 27),
                          child: Text("Logout",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold24RedA200)),
                      Padding(
                          padding: getPadding(top: 38),
                          child: Text("Are you sure you want to log out?",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold20)),
                      CustomButton(
                          height: getVerticalSize(55),
                          text: "Logout",
                          margin: getMargin(top: 22),
                          onTap: () {
                            onTapLogout(context);
                          }),
                      CustomButton(
                          height: getVerticalSize(55),
                          text: "Cancel",
                          margin: getMargin(top: 12, bottom: 48),
                          variant: ButtonVariant.FillGray800,
                          onTap: () {
                            onTapCancel(context);
                          })
                    ]))));
  }

  onTapLogout(BuildContext context) {
    Navigator.pushNamedAndRemoveUntil(
        context, AppRoutes.signInScreen, (route) => false);
  }

  onTapCancel(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homeScreenContainerScreen);
  }
}
