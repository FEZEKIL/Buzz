import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class ListellipseoneItemWidget extends StatelessWidget {
  const ListellipseoneItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      child: Container(
        padding: getPadding(
          left: 24,
          top: 22,
          right: 24,
          bottom: 22,
        ),
        decoration: AppDecoration.outlineBlack9000c.copyWith(
          borderRadius: BorderRadiusStyle.roundedBorder16,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Padding(
              padding: getPadding(
                top: 1,
              ),
              child: Row(
                children: [
                  CustomImageView(
                    imagePath: ImageConstant.imgEllipse148x48,
                    height: getSize(
                      48,
                    ),
                    width: getSize(
                      48,
                    ),
                    radius: BorderRadius.circular(
                      getHorizontalSize(
                        24,
                      ),
                    ),
                  ),
                  Padding(
                    padding: getPadding(
                      left: 16,
                      top: 7,
                      bottom: 3,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Text(
                          "",
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.left,
                          style: AppStyle.txtUrbanistRomanBold16.copyWith(
                            letterSpacing: getHorizontalSize(
                              0.2,
                            ),
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            top: 2,
                          ),
                          child: Text(
                            "Dec 10, 2024",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanMedium12Gray400
                                .copyWith(
                              letterSpacing: getHorizontalSize(
                                0.2,
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Spacer(),
                  CustomButton(
                    height: getVerticalSize(
                      32,
                    ),
                    width: getHorizontalSize(
                      60,
                    ),
                    text: "5",
                    margin: getMargin(
                      top: 8,
                      bottom: 8,
                    ),
                    shape: ButtonShape.RoundedBorder16,
                    padding: ButtonPadding.PaddingT7,
                    fontStyle: ButtonFontStyle.UrbanistSemiBold14WhiteA700,
                    prefixWidget: Container(
                      margin: getMargin(
                        right: 8,
                      ),
                      child: CustomImageView(
                        svgPath: ImageConstant.imgStar,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              width: getHorizontalSize(
                293,
              ),
              margin: getMargin(
                top: 12,
                right: 38,
              ),
              child: Text(
                "",
                maxLines: null,
                textAlign: TextAlign.left,
                style: AppStyle.txtUrbanistRegular14WhiteA700.copyWith(
                  letterSpacing: getHorizontalSize(
                    0.2,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
