import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class CancelBookingBottomsheet extends StatelessWidget {
  const CancelBookingBottomsheet({super.key});

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
                          padding: getPadding(top: 26),
                          child: Text("Cancel Booking",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold24RedA200)),
                      Container(
                          width: getHorizontalSize(340),
                          margin: getMargin(left: 19, top: 26, right: 19),
                          child: Text(
                              "Are you sure you want to cancel your hotel booking?",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtUrbanistRomanBold20)),
                      Container(
                          width: getHorizontalSize(372),
                          margin: getMargin(left: 3, top: 8, right: 3),
                          child: Text(
                              "Only 80% of the money you can refund from your payment according to our policy",
                              maxLines: null,
                              textAlign: TextAlign.center,
                              style: AppStyle.txtUrbanistRegular14WhiteA700
                                  .copyWith(
                                      letterSpacing: getHorizontalSize(0.2)))),
                      Padding(
                          padding: getPadding(top: 22, bottom: 58),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Expanded(
                                    child: CustomButton(
                                        height: getVerticalSize(58),
                                        text: "Cancel",
                                        margin: getMargin(right: 6),
                                        variant: ButtonVariant.FillGray800)),
                                Expanded(
                                    child: CustomButton(
                                        height: getVerticalSize(58),
                                        text: "Continue",
                                        margin: getMargin(left: 6),
                                        variant:
                                            ButtonVariant.OutlineGreenA7003f,
                                        onTap: () {
                                          onTapContinue(context);
                                        }))
                              ]))
                    ]))));
  }

  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.refundMethodScreen);
  }
}
