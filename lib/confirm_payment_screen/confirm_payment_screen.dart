import '../confirm_payment_screen/widgets/listcheckin_item_widget.dart';
import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/app_bar/appbar_image.dart';
import 'package:buzz/widgets/app_bar/appbar_title.dart';

import 'package:buzz/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:buzz/payment_successful_dialog/payment_successful_dialog.dart';

class ConfirmPaymentScreen extends StatelessWidget {
  const ConfirmPaymentScreen({super.key});

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
                    margin: getMargin(left: 24, top: 10, bottom: 14),
                    onTap: () {
                      onTapArrowleft17(context);
                    }),
                title:
                    AppbarTitle(text: "Payment", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgQrcode,
                      margin:
                          getMargin(left: 24, top: 10, right: 24, bottom: 14))
                ]),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 27, right: 24, bottom: 27),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          padding: getPadding(all: 20),
                          decoration: AppDecoration.outlineBlack9000c.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgRectangle4100x1004,
                                    height: getSize(100),
                                    width: getSize(100),
                                    radius: BorderRadius.circular(
                                        getHorizontalSize(16))),
                                Padding(
                                    padding: getPadding(
                                        left: 16, top: 10, bottom: 9),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.start,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("Bulgari Resort",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold20),
                                          Padding(
                                              padding: getPadding(top: 9),
                                              child: Text("Paris, France",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistRegular14Gray300
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.2)))),
                                          Padding(
                                              padding: getPadding(top: 12),
                                              child: Row(children: [
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgStar12x12,
                                                    height: getSize(12),
                                                    width: getSize(12),
                                                    margin: getMargin(
                                                        top: 2, bottom: 2)),
                                                Padding(
                                                    padding:
                                                        getPadding(left: 4),
                                                    child: Text("4.8",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtUrbanistSemiBold14
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.2)))),
                                                Padding(
                                                    padding: getPadding(
                                                        left: 8, bottom: 1),
                                                    child: Text(
                                                        "(4,378 reviews)",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtUrbanistRegular12
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.2))))
                                              ]))
                                        ])),
                                const Spacer(),
                                Padding(
                                    padding: getPadding(top: 6, bottom: 6),
                                    child: Column(
                                        crossAxisAlignment:
                                            CrossAxisAlignment.end,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          Text("27",
                                              overflow: TextOverflow.ellipsis,
                                              textAlign: TextAlign.left,
                                              style: AppStyle
                                                  .txtUrbanistRomanBold24Cyan60001),
                                          Padding(
                                              padding: getPadding(top: 5),
                                              child: Text("/ night",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistRegular10
                                                      .copyWith(
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.2)))),
                                          CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgBookmark24x24,
                                              height: getSize(24),
                                              width: getSize(24),
                                              margin: getMargin(top: 17))
                                        ]))
                              ])),
                      Padding(
                          padding: getPadding(top: 28),
                          child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(28));
                              },
                              itemCount: 2,
                              itemBuilder: (context, index) {
                                return const ListcheckinItemWidget();
                              })),
                      Container(
                          margin: getMargin(top: 28, bottom: 5),
                          padding: getPadding(
                              left: 24, top: 26, right: 24, bottom: 26),
                          decoration: AppDecoration.outlineBlack90014.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16),
                          child: Row(children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgImage27x441,
                                height: getVerticalSize(27),
                                width: getHorizontalSize(44),
                                radius: BorderRadius.circular(
                                    getHorizontalSize(4))),
                            Padding(
                                padding:
                                    getPadding(left: 12, top: 2, bottom: 2),
                                child: Text("•••• •••• •••• •••• 4679",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtUrbanistRomanBold18)),
                            const Spacer(),
                            GestureDetector(
                                onTap: () {
                                  onTapTxtChange(context);
                                },
                                child: Padding(
                                    padding:
                                        getPadding(top: 5, right: 8, bottom: 1),
                                    child: Text("Change",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold16
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))))
                          ]))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(55),
                text: "Confirm Payment",
                margin: getMargin(left: 24, right: 24, bottom: 48),
                variant: ButtonVariant.OutlineGreenA7003f,
                onTap: () {
                  onTapConfirmpayment(context);
                })));
  }

  onTapTxtChange(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.cardAddedScreen);
  }

  onTapConfirmpayment(BuildContext context) {
    showDialog(
        context: context,
        builder: (_) => const AlertDialog(
              content: PaymentSuccessfulDialog(),
              backgroundColor: Colors.transparent,
              contentPadding: EdgeInsets.zero,
              insetPadding: EdgeInsets.only(left: 0),
            ));
  }

  onTapArrowleft17(BuildContext context) {
    Navigator.pop(context);
  }
}
