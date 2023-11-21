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



class FillProfileScreen extends StatelessWidget {
  TextEditingController fullnameController = TextEditingController();

  TextEditingController nicknameController = TextEditingController();

  TextEditingController dateofbirthController = TextEditingController();

  TextEditingController emailController = TextEditingController();

  Country selectedCountry = CountryPickerUtils.getCountryByPhoneCode('91');

  TextEditingController phoneNumberController = TextEditingController();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  FillProfileScreen({super.key});

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
                    margin: getMargin(left: 24, top: 11, bottom: 9),
                    onTap: () {
                      onTapArrowleft(context);
                    }),
                centerTitle: true,
                title: AppbarTitle(text: "Fill Your Profile")),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 44, right: 24, bottom: 44),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getSize(140),
                          width: getSize(140),
                          child: Stack(
                              alignment: Alignment.bottomRight,
                              children: [
                                CustomImageView(
                                    imagePath: ImageConstant.imgEllipse140x140,
                                    height: getSize(140),
                                    width: getSize(140),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(70)),
                                    alignment: Alignment.center),
                                CustomImageView(
                                    svgPath: ImageConstant.imgEdit,
                                    height: getSize(35),
                                    width: getSize(35),
                                    alignment: Alignment.bottomRight)
                              ])),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: fullnameController,
                          hintText: "Full Name",
                          margin: getMargin(top: 24),
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistRegular14Gray500),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: nicknameController,
                          hintText: "Nickname",
                          margin: getMargin(top: 24),
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistRegular14Gray500),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: dateofbirthController,
                          hintText: "Date of Birth",
                          margin: getMargin(top: 24),
                          padding: TextFormFieldPadding.PaddingT19,
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistRegular14Gray500,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 18, right: 20, bottom: 18),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCalendar)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
                      CustomTextFormField(
                          focusNode: FocusNode(),
                          controller: emailController,
                          hintText: "Email",
                          margin: getMargin(top: 24),
                          padding: TextFormFieldPadding.PaddingT19,
                          fontStyle:
                              TextFormFieldFontStyle.UrbanistRegular14Gray500,
                          textInputType: TextInputType.emailAddress,
                          suffix: Container(
                              margin: getMargin(
                                  left: 30, top: 20, right: 22, bottom: 20),
                              decoration: BoxDecoration(
                                  border: Border.all(
                                      color: ColorConstant.gray500,
                                      width: getHorizontalSize(1),
                                      strokeAlign: strokeAlignCenter)),
                              child: CustomImageView(
                                  svgPath: ImageConstant.imgCheckmarkGray500)),
                          suffixConstraints:
                              BoxConstraints(maxHeight: getVerticalSize(56))),
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
                                  svgPath: ImageConstant.imgFavorite)),
                          hintText: "Gender",
                          margin: getMargin(top: 24, bottom: 5),
                          fontStyle: DropDownFontStyle.UrbanistRegular14,
                          items: dropdownItemList,
                          onChanged: (value) {})
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(55),
                text: "Continue",
                margin: getMargin(left: 24, right: 24, bottom: 51),
                variant: ButtonVariant.FillCyan600)));
  }

  onTapArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
