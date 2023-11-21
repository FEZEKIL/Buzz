import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/custom_button.dart';
import 'package:flutter/material.dart';

class PaymentSuccessfulDialog extends StatelessWidget {
  const PaymentSuccessfulDialog({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
        width: getHorizontalSize(340),
        padding: getPadding(all: 32),
        decoration: AppDecoration.fillBluegray900
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder24),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              CustomImageView(
                  svgPath: ImageConstant.imgGroupCyan600,
                  height: getVerticalSize(180),
                  width: getHorizontalSize(185),
                  margin: getMargin(top: 8)),
              Padding(
                  padding: getPadding(top: 34),
                  child: Text("Payment Successfull!",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtUrbanistRomanBold24Cyan60001)),
              Container(
                  width: getHorizontalSize(263),
                  margin: getMargin(left: 6, top: 14, right: 6),
                  child: Text("Successfully made payment and hotel booking",
                      maxLines: null,
                      textAlign: TextAlign.center,
                      style: AppStyle.txtUrbanistRegular18
                          .copyWith(letterSpacing: getHorizontalSize(0.2)))),
              CustomButton(
                  height: getVerticalSize(58),
                  text: "View Ticket",
                  margin: getMargin(top: 29),
                  onTap: () {
                    onTapViewticket(context);
                  })
            ]));
  }

  onTapViewticket(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.viewTicketScreen);
  }
}
