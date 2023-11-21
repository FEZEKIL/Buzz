import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/custom_button.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class BookmarkRemovalBottomsheet extends StatelessWidget {
  const BookmarkRemovalBottomsheet({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          width: double.maxFinite,
          padding: getPadding(
            left: 24,
            top: 8,
            right: 24,
            bottom: 8,
          ),
          decoration: AppDecoration.outlineGray8001.copyWith(
            borderRadius: BorderRadiusStyle.customBorderTL40,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              CustomImageView(
                svgPath: ImageConstant.imgFrameGray700,
                height: getVerticalSize(
                  3,
                ),
                width: getHorizontalSize(
                  38,
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 23,
                ),
                child: Text(
                  "Remove from Bookmark?",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold24,
                ),
              ),
              Container(
                margin: getMargin(
                  top: 24,
                ),
                padding: getPadding(
                  all: 20,
                ),
                decoration: AppDecoration.outlineBlack9000c.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder16,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
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
                        left: 12,
                        top: 7,
                        bottom: 9,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "President Hotel",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold20,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 12,
                            ),
                            child: Text(
                              "Paris, France",
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
                          Padding(
                            padding: getPadding(
                              top: 12,
                            ),
                            child: Row(
                              children: [
                                CustomImageView(
                                  svgPath: ImageConstant.imgStar12x12,
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
                                    left: 4,
                                  ),
                                  child: Text(
                                    "4.8",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtUrbanistSemiBold14.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.2,
                                      ),
                                    ),
                                  ),
                                ),
                                Padding(
                                  padding: getPadding(
                                    left: 8,
                                    bottom: 1,
                                  ),
                                  child: Text(
                                    "(4,378 reviews)",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style:
                                        AppStyle.txtUrbanistRegular12.copyWith(
                                      letterSpacing: getHorizontalSize(
                                        0.2,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    const Spacer(),
                    Padding(
                      padding: getPadding(
                        top: 6,
                        bottom: 8,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Text(
                            "35",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtUrbanistRomanBold24Cyan60001,
                          ),
                          Padding(
                            padding: getPadding(
                              top: 5,
                            ),
                            child: Text(
                              "/ night",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRegular10.copyWith(
                                letterSpacing: getHorizontalSize(
                                  0.2,
                                ),
                              ),
                            ),
                          ),
                          CustomImageView(
                            svgPath: ImageConstant.imgBookmark24x24,
                            height: getVerticalSize(
                              20,
                            ),
                            width: getHorizontalSize(
                              16,
                            ),
                            margin: getMargin(
                              top: 19,
                              right: 4,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Padding(
                padding: getPadding(
                  top: 48,
                  bottom: 40,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: CustomButton(
                        height: getVerticalSize(
                          58,
                        ),
                        text: "Cancel",
                        margin: getMargin(
                          right: 6,
                        ),
                        variant: ButtonVariant.FillGray800,
                      ),
                    ),
                    Expanded(
                      child: CustomButton(
                        height: getVerticalSize(
                          58,
                        ),
                        text: "Remove",
                        margin: getMargin(
                          left: 6,
                        ),
                        variant: ButtonVariant.OutlineGreenA7003f,
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
