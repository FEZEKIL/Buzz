import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/app_bar/appbar_image.dart';
import 'package:buzz/widgets/app_bar/appbar_title.dart';

import 'package:buzz/widgets/custom_button.dart';
import 'package:buzz/widgets/custom_drop_down.dart';
import 'package:buzz/widgets/custom_phone_number.dart';
import 'package:buzz/widgets/custom_text_form_field.dart';
import 'package:country_pickers/country.dart';
import 'package:country_pickers/country_pickers.dart';
import 'package:flutter/material.dart';
// ignore_for_file: must_be_immutable


class EditProfileScreen extends StatelessWidget {
  TextEditingController statusfilltypedController = TextEditingController();

  TextEditingController firstnameController = TextEditingController();

  TextEditingController dobController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('1');

  TextEditingController phoneNumberController = TextEditingController();

  List<String> dropdownItemList1 = ["Item One", "Item Two", "Item Three"];

  EditProfileScreen({super.key});

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
                      onTapArrowleft20(context);
                    }),
                title: AppbarTitle(
                    text: "Edit Profile", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 47, right: 24, bottom: 47),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: statusfilltypedController,
                          hintText: "Daniel Austin"),
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
                                  left: 30, top: 18, right: 20, bottom: 18),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCalendar20x20)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: emailController,
                          hintText: "uder@domain.com",
                          margin: getMargin(top: 24),
                          padding: TextFormFieldPadding.PaddingT19,
                          textInputType: TextInputType.emailAddress,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 18, right: 20, bottom: 18),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgClock20x20)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      CustomDropDown(
                          focusNode: FocusNode(),
                          icon: Container(
                              margin: getMargin(left: 30, right: 20),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFavorite20x20)),
                          hintText: "United States",
                          margin: getMargin(top: 24),
                          items: dropdownItemList,
                          onChanged: (value) {}),
                      Padding(
                          padding: getPadding(top: 24),
                          child: CustomPhoneNumber(
                              country: selectedCountry,
                              controller: phoneNumberController,
                              onTap: (Country country) {
                                selectedCountry = country;
                              })),
                      CustomDropDown(
                          focusNode: FocusNode(),
                          icon: Container(
                              margin: getMargin(left: 30, right: 20),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgFavorite20x20)),
                          hintText: "Male",
                          margin: getMargin(top: 24, bottom: 5),
                          items: dropdownItemList1,
                          onChanged: (value) {})
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(55),
                text: "Update",
                margin: getMargin(left: 24, right: 24, bottom: 48),
                variant: ButtonVariant.OutlineGreenA7003f)));
  }

  onTapArrowleft20(BuildContext context) {
    Navigator.pop(context);
  }
}
