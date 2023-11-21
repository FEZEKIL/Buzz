import 'package:buzz/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MyBookmarksItemWidget extends StatelessWidget {
  MyBookmarksItemWidget({super.key, this.onTapImgBookmark});

  VoidCallback? onTapImgBookmark;

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: getPadding(
        left: 18,
        top: 20,
        right: 18,
        bottom: 20,
      ),
      decoration: AppDecoration.outlineBlack9000c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder20,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          CustomImageView(
            imagePath: ImageConstant.imgRectangle5120x1401,
            height: getVerticalSize(
              120,
            ),
            width: getHorizontalSize(
              140,
            ),
            radius: BorderRadius.circular(
              getHorizontalSize(
                16,
              ),
            ),
            margin: getMargin(
              left: 1,
            ),
          ),
          Container(
            width: getHorizontalSize(
              115,
            ),
            margin: getMargin(
              left: 2,
              top: 15,
            ),
            child: Text(
              "",
              maxLines: null,
              textAlign: TextAlign.left,
              style: AppStyle.txtUrbanistRomanBold18,
            ),
          ),
          Padding(
            padding: getPadding(
              left: 2,
              top: 9,
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
                    "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistSemiBold14.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                ),
                Padding(
                  padding: getPadding(
                    left: 8,
                    top: 1,
                  ),
                  child: Text(
                    "",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRegular12.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: getPadding(
              left: 2,
              top: 9,
            ),
            child: Row(
              children: [
                Text(
                  "",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold20Cyan60001,
                ),
                Padding(
                  padding: getPadding(
                    left: 4,
                    top: 10,
                    bottom: 2,
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
                  height: getSize(
                    24,
                  ),
                  width: getSize(
                    24,
                  ),
                  margin: getMargin(
                    left: 48,
                  ),
                  onTap: () {
                    onTapImgBookmark?.call();
                  },
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
