import '../review_screen/widgets/listellipseone_item_widget.dart';
import '../review_screen/widgets/liststar1_item_widget.dart';
import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/app_bar/appbar_image.dart';
import 'package:buzz/widgets/app_bar/appbar_title.dart';
import 'package:flutter/material.dart';
import 'package:buzz/rate_hotel_bottomsheet/rate_hotel_bottomsheet.dart';

class ReviewScreen extends StatelessWidget {
  const ReviewScreen({super.key});

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
                    margin: getMargin(left: 24, top: 11, bottom: 10),
                    onTap: () {
                      onTapArrowleft11(context);
                    }),
                title: AppbarTitle(text: "Review", margin: getMargin(left: 16)),
                actions: [
                  AppbarImage(
                      height: getSize(28),
                      width: getSize(28),
                      svgPath: ImageConstant.imgClock,
                      margin:
                          getMargin(left: 24, top: 11, right: 24, bottom: 10),
                      onTap: () {
                        onTapClock(context);
                      })
                ]),
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.centerRight,
                          child: SizedBox(
                              height: getVerticalSize(68),
                              child: ListView.separated(
                                  padding: getPadding(left: 24, top: 30),
                                  scrollDirection: Axis.horizontal,
                                  separatorBuilder: (context, index) {
                                    return SizedBox(height: getVerticalSize(8));
                                  },
                                  itemCount: 6,
                                  itemBuilder: (context, index) {
                                    return const Liststar1ItemWidget();
                                  }))),
                      Padding(
                          padding: getPadding(left: 24, top: 37, right: 24),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                    padding: getPadding(top: 2),
                                    child: Text("Rating",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistSemiBold16WhiteA700
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                const Spacer(),
                                CustomImageView(
                                    svgPath: ImageConstant.imgStar12x12,
                                    height: getSize(16),
                                    width: getSize(16),
                                    margin: getMargin(top: 1, bottom: 4)),
                                Padding(
                                    padding: getPadding(left: 8, bottom: 2),
                                    child: Text("4.8",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle.txtUrbanistSemiBold16
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2)))),
                                Padding(
                                    padding:
                                        getPadding(left: 8, top: 1, bottom: 3),
                                    child: Text("(4,981 reviews)",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtUrbanistRegular14WhiteA700
                                            .copyWith(
                                                letterSpacing:
                                                    getHorizontalSize(0.2))))
                              ])),
                      Padding(
                          padding: getPadding(left: 24, top: 18, right: 24),
                          child: ListView.separated(
                              physics: const NeverScrollableScrollPhysics(),
                              shrinkWrap: true,
                              separatorBuilder: (context, index) {
                                return SizedBox(height: getVerticalSize(20));
                              },
                              itemCount: 5,
                              itemBuilder: (context, index) {
                                return const ListellipseoneItemWidget();
                              }))
                    ]))));
  }

  onTapArrowleft11(BuildContext context) {
    Navigator.pop(context);
  }

  onTapClock(BuildContext context) {
    showModalBottomSheet(
        context: context,
        builder: (_) => const RateHotelBottomsheet(),
        isScrollControlled: true);
  }
}
