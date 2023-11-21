import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/app_bar/appbar_image.dart';
import 'package:buzz/widgets/app_bar/appbar_title.dart';

import 'package:buzz/widgets/custom_button.dart';
import 'package:buzz/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable

class AddNewCardScreen extends StatelessWidget {
  TextEditingController cardholdernameController = TextEditingController();

  TextEditingController cardnumberController = TextEditingController();

  TextEditingController expirydateController = TextEditingController();

  TextEditingController cvvController = TextEditingController();

  AddNewCardScreen({super.key});

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
                      onTapArrowleft15(context);
                    }),
                title: AppbarTitle(
                    text: "Add New Card", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 31, right: 24, bottom: 31),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgCard1,
                          height: getVerticalSize(240),
                          width: getHorizontalSize(380)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: cardholdernameController,
                          hintText: "Daniel Austin",
                          margin: getMargin(top: 28)),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: cardnumberController,
                          hintText: "6373 2728 4797 4679",
                          margin: getMargin(top: 28)),
                      Padding(
                          padding: getPadding(top: 28, bottom: 5),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: expirydateController,
                                        hintText: "02/30",
                                        margin: getMargin(right: 8))),
                                Expanded(
                                    child: CustomTextFormField(
                                        focusNode: FocusNode(),
                                        controller: cvvController,
                                        hintText: "190",
                                        margin: getMargin(left: 8),
                                        textInputAction: TextInputAction.done))
                              ]))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(55),
                text: "Add New Card",
                margin: getMargin(left: 24, right: 24, bottom: 48),
                variant: ButtonVariant.OutlineGreenA7003f,
                onTap: () {
                  onTapAddnewcard(context);
                })));
  }

  onTapAddnewcard(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cardAddedScreen);
  }

  onTapArrowleft15(BuildContext context) {
    Navigator.pop(context);
  }
}
