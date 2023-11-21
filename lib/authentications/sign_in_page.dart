

import 'package:flutter/material.dart';



import '../core/utils/color_constant.dart';
import '../core/utils/image_constant.dart';
import '../core/utils/size_utils.dart';

import '../routes/app_routes.dart';
import '../theme/app_decoration.dart';
import '../theme/app_style.dart';
import '../widgets/custom_button.dart';
import '../widgets/custom_checkbox.dart';
import '../widgets/custom_image_view.dart';
import '../widgets/custom_text_form_field.dart';


// ignore: must_be_immutable
class SignInScreen extends StatelessWidget {
  TextEditingController emailController = TextEditingController();

  TextEditingController passwordController = TextEditingController();

  bool isCheckbox = false;

  SignInScreen({super.key});

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
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgArrowleft,
                          height: getSize(28),
                          width: getSize(28),
                          alignment: Alignment.centerLeft,
                          onTap: () {
                            onTapImgArrowleft(context);
                          }),
                      Align(
                          alignment: Alignment.centerLeft,
                          child: Container(
                              width: getHorizontalSize(288),
                              margin: getMargin(top: 79, right: 91),
                              child: Text("Login to your\nAccount",
                                  maxLines: null,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold48))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: emailController,
                          hintText: "Email",
                          margin: getMargin(top: 46),
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
                          margin: getMargin(top: 24),
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
                      Align(
                          alignment: Alignment.centerLeft,
                          child: CustomCheckbox(
                              alignment: Alignment.centerLeft,
                              text: "Remember me",
                              iconSize: getHorizontalSize(24),
                              value: isCheckbox,
                              margin: getMargin(top: 24),
                              fontStyle:
                                  CheckboxFontStyle.UrbanistSemiBold14WhiteA700,
                              onChange: (value) {
                                isCheckbox = value;
                              })),
                      CustomButton(
                          height: getVerticalSize(55),
                          text: "Sign in",
                          margin: getMargin(top: 24),
                          variant: ButtonVariant.FillCyan600),
                      GestureDetector(
                          onTap: () {
                            onTapTxtForgotthepasswoOne(context);
                          },
                          child: Padding(
                              padding: getPadding(top: 27),
                              child: Text("Forgot the password?",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistSemiBold16
                                      .copyWith(
                                          letterSpacing:
                                              getHorizontalSize(0.2))))),
                      Padding(
                          padding: getPadding(left: 10, top: 56, right: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              crossAxisAlignment: CrossAxisAlignment.end,
                              children: [
                                Padding(
                                    padding: getPadding(top: 13, bottom: 7),
                                    child: SizedBox(
                                        width: getHorizontalSize(96),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.gray800))),
                                Text("or continue with",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold18Gray100
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2))),
                                Padding(
                                    padding: getPadding(top: 13, bottom: 7),
                                    child: SizedBox(
                                        width: getHorizontalSize(96),
                                        child: Divider(
                                            height: getVerticalSize(1),
                                            thickness: getVerticalSize(1),
                                            color: ColorConstant.gray800)))
                              ])),
                      Padding(
                          padding: getPadding(left: 39, top: 33, right: 38),
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
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                    child: Container(
                                        height: getVerticalSize(60),
                                        width: getHorizontalSize(88),
                                        padding: getPadding(
                                            left: 31,
                                            top: 18,
                                            right: 31,
                                            bottom: 18),
                                        decoration: AppDecoration.outlineGray800
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
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
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                    child: Container(
                                        height: getVerticalSize(60),
                                        width: getHorizontalSize(87),
                                        padding: getPadding(
                                            left: 31,
                                            top: 18,
                                            right: 31,
                                            bottom: 18),
                                        decoration: AppDecoration.outlineGray800
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgGoogle24x24,
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
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                    child: Container(
                                        height: getVerticalSize(60),
                                        width: getHorizontalSize(88),
                                        padding: getPadding(
                                            left: 32,
                                            top: 18,
                                            right: 32,
                                            bottom: 18),
                                        decoration: AppDecoration.outlineGray800
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgAutolayouthorizontal,
                                              height: getSize(24),
                                              width: getSize(24),
                                              alignment: Alignment.center)
                                        ])))
                              ])),
                      Padding(
                          padding: getPadding(top: 50, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Padding(
                                    padding: getPadding(bottom: 1),
                                    child: Text("Don’t have an account?",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistRegular14
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                GestureDetector(
                                    onTap: () {
                                      onTapTxtSignup(context);
                                    },
                                    child: Padding(
                                        padding: getPadding(left: 8, top: 1),
                                        child: Text("Sign up",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistSemiBold14
                                                .copyWith(
                                                    letterSpacing:
                                                        getHorizontalSize(
                                                            0.2)))))
                              ]))
                    ]))));
  }

  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }

  onTapTxtForgotthepasswoOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.forgotPasswordScreen);
  }

  onTapTxtSignup(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
