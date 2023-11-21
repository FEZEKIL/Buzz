import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

class OnboardingThreeScreen extends StatelessWidget {
  const OnboardingThreeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgRectangle1420x4283,
                          height: getVerticalSize(350),
                          width: getHorizontalSize(428)),
                      Container(
                          width: getHorizontalSize(342),
                          margin: getMargin(left: 42, top: 25, right: 42),
                          child: Text("Let’s discover the world with us",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtUrbanistRomanBold32)),
                      Container(
                          width: getHorizontalSize(368),
                          margin: getMargin(left: 29, top: 10, right: 29),
                          child: Text(
                              "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua.",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtUrbanistRegular16.copyWith(
                                  letterSpacing: getHorizontalSize(0.2)))),
                      const Spacer(),
                      SizedBox(
                          height: getVerticalSize(8),
                          child: SmoothIndicator(
                              offset: 0,
                              count: 3,
                              size: Size.zero,
                              effect: ScrollingDotsEffect(
                                  spacing: 6,
                                  activeDotColor: ColorConstant.cyan600,
                                  dotColor: ColorConstant.gray800,
                                  dotHeight: getVerticalSize(8),
                                  dotWidth: getHorizontalSize(8)))),
                      Padding(
                          padding: getPadding(
                              left: 24, top: 30, right: 24, bottom: 10),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomButton(
                                    height: getVerticalSize(55),
                                    width: getHorizontalSize(180),
                                    text: "Skip",
                                    variant: ButtonVariant.FillGray800,
                                    onTap: () {
                                      onTapSkip(context);
                                    }),
                                CustomButton(
                                    height: getVerticalSize(54),
                                    width: getHorizontalSize(180),
                                    text: "Next",
                                    margin: getMargin(left: 20, bottom: 1),
                                    onTap: () {
                                      onTapNext(context);
                                    })
                              ]))
                    ]))));
  }

  onTapSkip(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.letSYouInScreen);
  }

  onTapNext(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpScreen);
  }
}
