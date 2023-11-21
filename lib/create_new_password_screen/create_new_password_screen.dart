import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/app_bar/appbar_image.dart';
import 'package:buzz/widgets/app_bar/appbar_title.dart';

import 'package:buzz/widgets/custom_button.dart';
import 'package:buzz/widgets/custom_checkbox.dart';
import 'package:buzz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:buzz/reset_password_successful_dialog/reset_password_successful_dialog.dart';
// ignore_for_file: must_be_immutable


class CreateNewPasswordScreen extends StatelessWidget {
  TextEditingController confirmpasswordinputController =
      TextEditingController();

  TextEditingController confirmpasswordinputOneController =
      TextEditingController();

  bool isCheckbox = false;

  CreateNewPasswordScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            resizeToAvoidBottomInset: false,
            appBar: AppBar(
                leadingWidth: 52,
                leading: AppbarImage(
                    height: getSize(28),
                    width: getSize(28),
                    svgPath: ImageConstant.imgArrowleft,
                    margin: getMargin(left: 24, top: 11, bottom: 13),
                    onTap: () {
                      onTapArrowleft4(context);
                    }),
                title: AppbarTitle(
                    text: "Forgot Password", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 56, right: 24, bottom: 56),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgImage300x300,
                          height: getSize(300),
                          width: getSize(300),
                          alignment: Alignment.center,
                          margin: getMargin(top: 19)),
                      Padding(
                          padding: getPadding(top: 57),
                          child: Text("Create Your New Password",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRegular16WhiteA700
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.2)))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: confirmpasswordinputController,
                          hintText: "*************",
                          margin: getMargin(top: 24),
                          padding: TextFormFieldPadding.PaddingT21_1,
                          prefix: Container(
                              margin: getMargin(
                                  left: 20, top: 20, right: 12, bottom: 20),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock20x20)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(60)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 20, right: 20, bottom: 20),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgDashboard20x20)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(60))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: confirmpasswordinputOneController,
                          hintText: "*************",
                          margin: getMargin(top: 24),
                          padding: TextFormFieldPadding.PaddingT21_1,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 20, top: 20, right: 12, bottom: 20),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock20x20)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(60)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 20, right: 20, bottom: 20),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgDashboard20x20)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(60))),
                      CustomCheckbox(
                          text: "Remember me",
                          value: isCheckbox,
                          margin: getMargin(top: 24),
                          fontStyle:
                              CheckboxFontStyle.UrbanistSemiBold14WhiteA700,
                          onChange: (value) {
                            isCheckbox = value;
                          })
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
    showDialog(
        context: context,
        builder: (_) => const AlertDialog(
              content: ResetPasswordSuccessfulDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onTapArrowleft4(BuildContext context) {
    Navigator.pop(context);
  }
}
