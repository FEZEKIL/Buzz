import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/app_bar/appbar_image.dart';
import 'package:buzz/widgets/app_bar/appbar_title.dart';
import 'package:buzz/widgets/custom_button.dart';
import 'package:buzz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

class BookingNameScreen extends StatelessWidget {
  TextEditingController statusfilltypedController = TextEditingController();

  TextEditingController firstnameController = TextEditingController();

  TextEditingController dobController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  TextEditingController phoneController = TextEditingController();

  BookingNameScreen({super.key});

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
                    margin: getMargin(left: 24, top: 10, bottom: 10),
                    onTap: () {
                      onTapArrowleft13(context);
                    }),
                title: AppbarTitle(
                    text: "Name of Reservation", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 31, right: 24, bottom: 31),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                                width: getHorizontalSize(121),
                                padding: getPadding(
                                    left: 30, top: 8, right: 48, bottom: 8),
                                decoration: AppDecoration.txtFillCyan60001
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder19),
                                child: Text("Mr.",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtUrbanistSemiBold16WhiteA700
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2)))),
                            Container(
                                width: getHorizontalSize(122),
                                padding: getPadding(
                                    left: 30, top: 8, right: 45, bottom: 8),
                                decoration: AppDecoration.txtOutlineCyan60001
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder19),
                                child: Text("Mrs.",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold16
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2)))),
                            Container(
                                width: getHorizontalSize(121),
                                padding: getPadding(
                                    left: 30, top: 8, right: 47, bottom: 8),
                                decoration: AppDecoration.txtOutlineCyan60001
                                    .copyWith(
                                        borderRadius: BorderRadiusStyle
                                            .txtCircleBorder19),
                                child: Text("Ms.",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistSemiBold16
                                        .copyWith(
                                            letterSpacing:
                                                getHorizontalSize(0.2))))
                          ]),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: statusfilltypedController,
                          hintText: "Daniel Austin",
                          margin: getMargin(top: 30)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: firstnameController,
                          hintText: "Daniel",
                          margin: getMargin(top: 24)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: dobController,
                          hintText: "12/27/1995",
                          margin: getMargin(top: 24),
                          padding: TextFormFieldPadding.PaddingT19,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 19, right: 22, bottom: 19),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorConstant.cyan600,
                                      width: getHorizontalSize(1),
                                      strokeAlign: strokeAlignCenter)),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCalendarCyan600)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: emailController,
                          hintText: "user@domain.com",
                          margin: getMargin(top: 24),
                          padding: TextFormFieldPadding.PaddingT19,
                          textInputType: TextInputType.emailAddress,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 20, right: 22, bottom: 20),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorConstant.cyan600,
                                      width: getHorizontalSize(1),
                                      strokeAlign: strokeAlignCenter)),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgClockCyan600)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: phoneController,
                          hintText: "+1 123 456 789 000",
                          margin: getMargin(top: 24, bottom: 5),
                          padding: TextFormFieldPadding.PaddingT21,
                          textInputAction: TextInputAction.done,
                          prefix: Container(
                              margin: getMargin(
                                  left: 20, top: 19, right: 12, bottom: 19),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgTelevisionGray50)),
                          prefixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56)))
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
    Navigator.pushNamed(context, AppRoutes.choosePaymentMethodScreen);
  }

  onTapArrowleft13(BuildContext context) {
    Navigator.pop(context);
  }
}
