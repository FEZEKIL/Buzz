import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/custom_button.dart';
import 'package:buzz/widgets/custom_checkbox.dart';
import 'package:buzz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable


class SignUpScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isCheckbox = false;

  SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            resizeToAvoidBottomInset: false,
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 11, right: 24, bottom: 11),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(28),
                          width: getSize(28),
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Container(
                          width: getHorizontalSize(263),
                          margin: getMargin(top: 93),
                          child: Text("Create your\nAccount",
                              maxLines: null,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold48)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: emailController,
                          hintText: "Email",
                          margin: getMargin(top: 60),
                          padding: TextFormFieldPadding.PaddingT21,
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistRegular14Gray500,
                          textInputType: TextInputType.emailAddress,
                          prefix: Container(
                              margin: getMargin(
                                  left: 20, top: 20, right: 12, bottom: 20),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCheckmark)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(60))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: passwordController,
                          hintText: "Password",
                          margin: getMargin(top: 20),
                          padding: TextFormFieldPadding.PaddingT21_1,
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistRegular14Gray500,
                          textInputAction: TextInputAction.done,
                          textInputType: TextInputType.visiblePassword,
                          prefix: Container(
                              margin: getMargin(
                                  left: 20, top: 20, right: 12, bottom: 20),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgLock)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(60)),
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 20, right: 20, bottom: 20),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgDashboard)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(60)),
                          isObscureText: true),
                      CustomCheckbox(
                          text: "Remember me",
                          iconSize: getHorizontalSize(24),
                          value: isCheckbox,
                          margin: getMargin(top: 20),
                          fontStyle:
                              CheckboxFontStyle.UrbanistSemiBold14WhiteA700,
                          onChange: (value) {
                            isCheckbox = value;
                          }),
                      CustomButton(
                          height: getVerticalSize(55),
                          text: "Sign up",
                          margin: getMargin(top: 20),
                          variant: ButtonVariant.FillCyan600,
                          onTap: () {
                            onTapSignup(context);
                          }),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 10, top: 74, right: 10),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  children: [
                                    Padding(
                                        padding: getPadding(top: 11, bottom: 9),
                                        child: SizedBox(
                                            width: getHorizontalSize(96),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.gray800))),
                                    Text("or continue with",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistSemiBold18Gray100
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))),
                                    Padding(
                                        padding: getPadding(top: 11, bottom: 9),
                                        child: SizedBox(
                                            width: getHorizontalSize(96),
                                            child: Divider(
                                                height: getVerticalSize(1),
                                                thickness: getVerticalSize(1),
                                                color: ColorConstant.gray800)
                                                )
                                                )
                                  ])
                                  )
                                  ),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(left: 38, top: 31, right: 38),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: const EdgeInsets.all(0),
                                        color: ColorConstant.blueGray900,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: ColorConstant.gray800,
                                                width: getHorizontalSize(1)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder16),
                                        child: Container(
                                            height: getVerticalSize(60),
                                            width: getHorizontalSize(88),
                                            padding: getPadding(
                                                left: 31,
                                                top: 18,
                                                right: 31,
                                                bottom: 18),
                                            decoration: AppDecoration
                                                .outlineGray800
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder16),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgFacebook,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  alignment: Alignment.center)
                                            ]))),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 20),
                                        color: ColorConstant.blueGray900,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: ColorConstant.gray800,
                                                width: getHorizontalSize(1)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder16),
                                        child: Container(
                                            height: getVerticalSize(60),
                                            width: getHorizontalSize(87),
                                            padding: getPadding(
                                                left: 31,
                                                top: 18,
                                                right: 31,
                                                bottom: 18),
                                            decoration: AppDecoration
                                                .outlineGray800
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder16),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgGoogle24x24,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  alignment: Alignment.center)
                                            ]))),
                                    Card(
                                        clipBehavior: Clip.antiAlias,
                                        elevation: 0,
                                        margin: getMargin(left: 20),
                                        color: ColorConstant.blueGray900,
                                        shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                                color: ColorConstant.gray800,
                                                width: getHorizontalSize(1)),
                                            borderRadius: BorderRadiusStyle
                                                .roundedBorder16),
                                        child: Container(
                                            height: getVerticalSize(60),
                                            width: getHorizontalSize(88),
                                            padding: getPadding(
                                                left: 32,
                                                top: 18,
                                                right: 32,
                                                bottom: 18),
                                            decoration: AppDecoration
                                                .outlineGray800
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder16),
                                            child: Stack(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgAutolayouthorizontal,
                                                  height: getSize(24),
                                                  width: getSize(24),
                                                  alignment: Alignment.center)
                                            ])))
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 66, bottom: 5),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text("Already have an account?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRegular14
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))),
                                    GestureDetector(
                                        onTap: () {
                                          onTapTxtSignin(context);
                                        },
                                        child: Padding(
                                            padding: getPadding(left: 8),
                                            child: Text("Sign in",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistSemiBold14
                                                    .copyWith(
                                                        letterSpacing:
                                                            getHorizontalSize(
                                                                0.2)))))
                                  ])))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fillProfileScreen);
  }

  onTapTxtSignin(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.fillProfileScreen);
  }
}
