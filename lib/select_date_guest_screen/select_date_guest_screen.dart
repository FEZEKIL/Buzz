import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/app_bar/appbar_image.dart';
import 'package:buzz/widgets/app_bar/appbar_title.dart';

import 'package:buzz/widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:table_calendar/table_calendar.dart';
// ignore_for_file: must_be_immutable


class SelectDateGuestScreen extends StatelessWidget {
  DateTime? rangeStart;

  DateTime? rangeEnd;

  DateTime? selectedDay;

  DateTime focusedDay = DateTime.now();

  RangeSelectionMode rangeSelectionMode = RangeSelectionMode.toggledOn;

  SelectDateGuestScreen({super.key});

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
                    margin: getMargin(left: 24, top: 10, bottom: 10),
                    onTap: () {
                      onTapArrowleft12(context);
                    }),
                title: AppbarTitle(
                    text: "Select Date", margin: getMargin(left: 16))),
            body: Container(
                width: double.maxFinite,
                padding: getPadding(left: 24, top: 20, right: 24, bottom: 20),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                          width: getHorizontalSize(380),
                          margin: getMargin(top: 11),
                          child: TableCalendar(
                              locale: 'en_US',
                              firstDay: DateTime(DateTime.now().year - 5),
                              lastDay: DateTime(DateTime.now().year + 5),
                              calendarFormat: CalendarFormat.month,
                              rangeSelectionMode: rangeSelectionMode,
                              startingDayOfWeek: StartingDayOfWeek.monday,
                              headerStyle: const HeaderStyle(
                                  formatButtonVisible: false,
                                  titleCentered: true),
                              calendarStyle: const CalendarStyle(
                                  outsideDaysVisible: false,
                                  isTodayHighlighted: false),
                              focusedDay: focusedDay,
                              rangeStartDay: rangeStart,
                              rangeEndDay: rangeEnd,
                              onDaySelected: (selectedDay, focusedDay) {},
                              onRangeSelected: (start, end, focusedDay) {},
                              onPageChanged: (focusedDay) {})),
                      Padding(
                          padding: getPadding(top: 19),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Check in",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtUrbanistRomanBold18),
                                      Container(
                                          margin: getMargin(top: 12),
                                          padding: getPadding(
                                              left: 20,
                                              top: 18,
                                              right: 20,
                                              bottom: 18),
                                          decoration: AppDecoration
                                              .fillBluegray900
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                          child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        top: 1, bottom: 1),
                                                    child: Text("Dec 16",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtUrbanistSemiBold14WhiteA700
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.2)))),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCalendar20x20,
                                                    height: getSize(20),
                                                    width: getSize(20),
                                                    margin: getMargin(left: 59))
                                              ]))
                                    ]),
                                CustomImageView(
                                    svgPath: ImageConstant.imgMenu20x20,
                                    height: getSize(20),
                                    width: getSize(20),
                                    margin: getMargin(top: 52, bottom: 18)),
                                Column(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      Text("Check out",
                                          overflow: TextOverflow.ellipsis,
                                          textAlign: TextAlign.left,
                                          style:
                                              AppStyle.txtUrbanistRomanBold18),
                                      Container(
                                          margin: getMargin(top: 12),
                                          padding: getPadding(
                                              left: 20,
                                              top: 18,
                                              right: 20,
                                              bottom: 18),
                                          decoration: AppDecoration
                                              .fillBluegray900
                                              .copyWith(
                                                  borderRadius:
                                                      BorderRadiusStyle
                                                          .roundedBorder12),
                                          child: Row(
                                              mainAxisSize: MainAxisSize.min,
                                              children: [
                                                Padding(
                                                    padding: getPadding(
                                                        top: 1, bottom: 1),
                                                    child: Text("Dec 20",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtUrbanistSemiBold14WhiteA700
                                                            .copyWith(
                                                                letterSpacing:
                                                                    getHorizontalSize(
                                                                        0.2)))),
                                                CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgCalendar20x20,
                                                    height: getSize(20),
                                                    width: getSize(20),
                                                    margin: getMargin(left: 55))
                                              ]))
                                    ])
                              ])),
                      Padding(
                          padding: getPadding(top: 29),
                          child: Text("Guest",
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.left,
                              style: AppStyle.txtUrbanistRomanBold18)),
                      Container(
                          margin: getMargin(top: 16),
                          padding: getPadding(
                              left: 83, top: 12, right: 83, bottom: 12),
                          decoration: AppDecoration.outlineGray800.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder20),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: const EdgeInsets.all(0),
                                    color: ColorConstant.teal900,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                    child: Container(
                                        height: getSize(52),
                                        width: getSize(52),
                                        padding: getPadding(all: 16),
                                        decoration: AppDecoration
                                            .outlineIndigoA20014
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgMenu2,
                                              height: getSize(20),
                                              width: getSize(20),
                                              alignment: Alignment.center)
                                        ]))),
                                Padding(
                                    padding: getPadding(top: 11, bottom: 11),
                                    child: Text("3",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style:
                                            AppStyle.txtUrbanistRomanBold24)),
                                Card(
                                    clipBehavior: Clip.antiAlias,
                                    elevation: 0,
                                    margin: const EdgeInsets.all(0),
                                    color: ColorConstant.teal900,
                                    shape: RoundedRectangleBorder(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder16),
                                    child: Container(
                                        height: getSize(52),
                                        width: getSize(52),
                                        padding: getPadding(all: 16),
                                        decoration: AppDecoration
                                            .outlineIndigoA20014
                                            .copyWith(
                                                borderRadius: BorderRadiusStyle
                                                    .roundedBorder16),
                                        child: Stack(children: [
                                          CustomImageView(
                                              svgPath: ImageConstant.imgPlus,
                                              height: getSize(20),
                                              width: getSize(20),
                                              alignment: Alignment.center)
                                        ])))
                              ])),
                      Align(
                          alignment: Alignment.center,
                          child: Padding(
                              padding: getPadding(top: 21),
                              child: Text("Total: 435",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtUrbanistRomanBold20)))
                    ])),
            bottomNavigationBar: CustomButton(
                height: getVerticalSize(55),
                text: "Continue",
                margin: getMargin(left: 24, right: 24, bottom: 32),
                variant: ButtonVariant.OutlineGreenA7003f,
                onTap: () {
                  onTapContinue(context);
                })));
  }

  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.bookingNameScreen);
  }

  onTapArrowleft12(BuildContext context) {
    Navigator.pop(context);
  }
}
