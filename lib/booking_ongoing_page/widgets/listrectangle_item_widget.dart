import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListrectangleItemWidget extends StatelessWidget {
  ListrectangleItemWidget({super.key, this.onTapCancelbooking, this.onTapViewticket});

  VoidCallback? onTapCancelbooking;

  VoidCallback? onTapViewticket;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          all: 20,
        ),
        decoration: AppDecoration.outlineBlack9000c.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Padding(
              padding: getPadding(
                right: 25,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgRectangle4100x1001,
                    height: getSize(
                      100,
                    ),
                    width: getSize(
                      100,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        16,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 8,
                      bottom: 6,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold20,
                        ),
                        Padding(
                          padding: getPadding(
                            top: 9,
                          ),
                          child: Text(
                            "",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style:
                                AppStyle.txtUrbanistRegular14Gray300.copyWith(
                              letterSpacing: getHorizontalSize(
                                0.2,
                              ),
                            ),
                          ),
                        ),
                        CustomButton(
                          height: getVerticalSize(
                            24,
                          ),
                          width: getHorizontalSize(
                            60,
                          ),
                          text: "Paid",
                          margin: getMargin(
                            top: 11,
                          ),
                          variant: ButtonVariant.FillGreenA7001e,
                          shape: ButtonShape.RoundedBorder6,
                          padding: ButtonPadding.PaddingAll6,
                          fontStyle: ButtonFontStyle.UrbanistSemiBold10,
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: getPadding(
                top: 20,
              ),
              child: Divider(
                height: getVerticalSize(
                  1,
                ),
                thickness: getVerticalSize(
                  1,
                ),
                color: ColorConstant.blueGray700,
              ),
            ),
            Padding(
              padding: getPadding(
                top: 19,
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomButton(
                      height: getVerticalSize(
                        38,
                      ),
                      text: "Cancel Booking",
                      margin: getMargin(
                        right: 6,
                      ),
                      variant: ButtonVariant.OutlineCyan60001,
                      shape: ButtonShape.CircleBorder19,
                      padding: ButtonPadding.PaddingAll8,
                      fontStyle: ButtonFontStyle.UrbanistSemiBold16Cyan60001_1,
                      onTap: () {
                        // onTapCancelbooking!(context);
                      },
                    ),
                  ),
                  Expanded(
                    child: CustomButton(
                      height: getVerticalSize(
                        38,
                      ),
                      text: "View Ticket",
                      margin: getMargin(
                        left: 6,
                      ),
                      shape: ButtonShape.CircleBorder19,
                      padding: ButtonPadding.PaddingAll8,
                      fontStyle: ButtonFontStyle.UrbanistSemiBold16WhiteA700,
                      onTap: () {
                        // onTapViewticket(context);
                      },
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
