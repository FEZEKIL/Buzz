import 'package:buzz/core/app_export.dart';
import 'package:flutter/material.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        extendBody: true,
        extendBodyBehindAppBar: true,
        backgroundColor: ColorConstant.gray900,
        body: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
            color: ColorConstant.gray900,
            image: DecorationImage(
              image: AssetImage(
                ImageConstant.imgWelcomescreen,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Container(
            width: double.maxFinite,
            padding: getPadding(
              left: 32,
              top: 45,
              right: 32,
              bottom: 45,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                const Spacer(),
                Text(
                  "Welcome to",
                  overflow: TextOverflow.ellipsis,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtUrbanistRomanBold48,
                ),
                Padding(
                  padding: getPadding(
                    top: 23,
                  ),
                  child: Text(
                    "Comfort",
                    overflow: TextOverflow.ellipsis,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistRomanBlack64,
                  ),
                ),
                Container(
                  width: getHorizontalSize(
                    327,
                  ),
                  margin: getMargin(
                    top: 41,
                    right: 36,
                  ),
                  child: Text(
                    "The best hotel booking in this century to accompany your vacation",
                    maxLines: null,
                    textAlign: TextAlign.left,
                    style: AppStyle.txtUrbanistSemiBold18.copyWith(
                      letterSpacing: getHorizontalSize(
                        0.2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
