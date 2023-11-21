import 'package:buzz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class HotelsItemWidget extends StatelessWidget {
  const HotelsItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return IntrinsicWidth(
      child: Align(
        alignment: Alignment.centerRight,
        child: Container(
          height: getVerticalSize(
            400,
          ),
          width: getHorizontalSize(
            300,
          ),
          margin: getMargin(
            right: 24,
          ),
          child: Stack(
            alignment: Alignment.bottomCenter,
            children: [
              CustomImageView(
                imagePath: ImageConstant.imgRectangle3400x3001,
                height: getVerticalSize(
                  400,
                ),
                width: getHorizontalSize(
                  300,
                ),
                radius: BorderRadius.circular(
                  getHorizontalSize(
                    36,
                  ),
                ),
                alignment: Alignment.center,
              ),
              Align(
                alignment: Alignment.bottomCenter,
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.end,
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Container(
                      margin: getMargin(
                        right: 23,
                      ),
                      padding: getPadding(
                        left: 16,
                        top: 7,
                        right: 16,
                        bottom: 7,
                      ),
                      decoration: AppDecoration.fillCyan60001.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder16,
                      ),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          CustomImageView(
                            svgPath: ImageConstant.imgStar,
                            height: getSize(
                              12,
                            ),
                            width: getSize(
                              12,
                            ),
                            margin: getMargin(
                              top: 2,
                              bottom: 2,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              left: 8,
                            ),
                            child: Text(
                              "4.8",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistSemiBold14WhiteA700
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
                    Container(
                      margin: getMargin(
                        top: 172,
                      ),
                      padding: getPadding(
                        left: 32,
                        top: 23,
                        right: 32,
                        bottom: 23,
                      ),
                      decoration:
                          AppDecoration.gradientGray80000Gray90096.copyWith(
                        borderRadius: BorderRadiusStyle.customBorderBL36,
                      ),
                      child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                            padding: getPadding(
                              top: 19,
                            ),
                            child: Text(
                              "Emeralda De Hotel",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold24,
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 10,
                            ),
                            child: Text(
                              "Paris, France",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRegular16WhiteA700
                                  .copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.2,
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: getPadding(
                              top: 8,
                            ),
                            child: Row(
                              children: [
                                Text(
                                  "29",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold24,
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 4,
                                    top: 9,
                                    bottom: 2,
                                  ),
                                  child: Text(
                                    "/ per night",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle
                                        .txtUrbanistRegular14WhiteA700
                                        .copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.2,
                                      ),
                                    ),
                                  ),
                                ),
                                const Spacer(),
                                CustomImageView(
                                  svgPath: ImageConstant.imgBookmark,
                                  height: getSize(
                                    28,
                                  ),
                                  width: getSize(
                                    28,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
