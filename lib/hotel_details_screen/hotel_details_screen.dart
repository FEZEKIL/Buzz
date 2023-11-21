import '../hotel_details_screen/widgets/hotel_details_item_widget.dart';
import 'dart:async';
import 'package:buzz/core/app_export.dart';
import 'package:buzz/widgets/app_bar/appbar_image.dart';
import 'package:buzz/widgets/app_bar/custom_app_bar.dart';
import 'package:buzz/widgets/custom_button.dart';
import 'package:buzz/widgets/custom_drop_down.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
// ignore_for_file: must_be_immutable


class HotelDetailsScreen extends StatelessWidget {
  Completer<GoogleMapController> googleMapController = Completer();

  List<String> dropdownItemList = ["Item One", "Item Two", "Item Three"];

  HotelDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      SizedBox(
                          height: getVerticalSize(256),
                          width: double.maxFinite,
                          child: Stack(alignment: Alignment.center, children: [
                            CustomImageView(
                                imagePath: ImageConstant.imgRectangle6256x428,
                                height: getVerticalSize(256),
                                width: getHorizontalSize(428),
                                alignment: Alignment.center),
                            Align(
                                alignment: Alignment.center,
                                child: Container(
                                    decoration: AppDecoration
                                        .gradientGray80000Gray90096,
                                    child: Column(
                                        mainAxisSize: MainAxisSize.min,
                                        mainAxisAlignment:
                                            MainAxisAlignment.start,
                                        children: [
                                          CustomAppBar(
                                              height: getVerticalSize(50),
                                              leadingWidth: 52,
                                              leading: AppbarImage(
                                                  height: getSize(28),
                                                  width: getSize(28),
                                                  svgPath: ImageConstant
                                                      .imgArrowdownWhiteA700,
                                                  margin: getMargin(
                                                      left: 24,
                                                      top: 11,
                                                      bottom: 11),
                                                  onTap: () {
                                                    onTapArrowleft8(context);
                                                  }),
                                              actions: [
                                                AppbarImage(
                                                    height: getSize(28),
                                                    width: getSize(28),
                                                    svgPath: ImageConstant
                                                        .imgBookmark,
                                                    margin: getMargin(
                                                        left: 24,
                                                        top: 11,
                                                        right: 11)),
                                                AppbarImage(
                                                    height: getSize(28),
                                                    width: getSize(28),
                                                    svgPath:
                                                        ImageConstant.imgClock,
                                                    margin: getMargin(
                                                        left: 20,
                                                        top: 11,
                                                        right: 35))
                                              ]),
                                          Container(
                                              height: getVerticalSize(6),
                                              margin: getMargin(
                                                  top: 188, bottom: 12),
                                              child: SmoothIndicator(
                                                  offset: 0,
                                                  count: 5,
                                                  size: Size.zero,
                                                  effect: ScrollingDotsEffect(
                                                      spacing: 11,
                                                      activeDotColor:
                                                          ColorConstant.cyan600,
                                                      dotColor: ColorConstant
                                                          .blueGray400,
                                                      dotHeight:
                                                          getVerticalSize(6),
                                                      dotWidth:
                                                          getHorizontalSize(
                                                              6))))
                                        ])))
                          ])),
                      Expanded(
                          child: SingleChildScrollView(
                              child: Padding(
                                  padding:
                                      getPadding(left: 24, top: 25, bottom: 78),
                                  child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Text("Royale President Hotel",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtUrbanistRomanBold32),
                                        Padding(
                                            padding:
                                                getPadding(top: 14, right: 87),
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath:
                                                      ImageConstant.imgLocation,
                                                  height: getSize(20),
                                                  width: getSize(20)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 1,
                                                      bottom: 1),
                                                  child: Text(
                                                      "79 Place de la Madeleine, Paris, 75009, France ",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRegular14
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.2))))
                                            ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 41, right: 24),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Text("Gallery Photos",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanBold20),
                                                  GestureDetector(
                                                      onTap: () {
                                                        onTapTxtSeeall(context);
                                                      },
                                                      child: Padding(
                                                          padding: getPadding(
                                                              bottom: 4),
                                                          child: Text("See All",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtUrbanistRomanBold16Cyan60001
                                                                  .copyWith(
                                                                      letterSpacing:
                                                                          getHorizontalSize(
                                                                              0.2)))))
                                                ])),
                                        SingleChildScrollView(
                                            scrollDirection: Axis.horizontal,
                                            padding: getPadding(top: 14),
                                            child: IntrinsicWidth(
                                                child: Row(
                                                    mainAxisAlignment:
                                                        MainAxisAlignment
                                                            .center,
                                                    children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle7100x140,
                                                      height:
                                                          getVerticalSize(100),
                                                      width: getHorizontalSize(
                                                          140),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  16))),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle8100x140,
                                                      height:
                                                          getVerticalSize(100),
                                                      width: getHorizontalSize(
                                                          140),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  16)),
                                                      margin:
                                                          getMargin(left: 12)),
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgRectangle9100x140,
                                                      height:
                                                          getVerticalSize(100),
                                                      width: getHorizontalSize(
                                                          140),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  16)),
                                                      margin:
                                                          getMargin(left: 12))
                                                ]))),
                                        Padding(
                                            padding: getPadding(top: 29),
                                            child: Text("Details",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold20)),
                                        Padding(
                                            padding: getPadding(
                                                left: 27, top: 16, right: 41),
                                            child: Row(children: [
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgFrame32x32,
                                                            height: getSize(32),
                                                            width: getSize(32)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 7),
                                                            child: Text(
                                                                "Hotels",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 47, bottom: 1),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgTicket,
                                                            height: getSize(32),
                                                            width: getSize(32)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 7),
                                                            child: Text(
                                                                "4 Bedrooms",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 29, bottom: 1),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgLock32x32,
                                                            height: getSize(32),
                                                            width: getSize(32)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 7),
                                                            child: Text(
                                                                "2 Bathrooms",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(left: 35),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgFacebook32x32,
                                                            height: getSize(32),
                                                            width: getSize(32),
                                                            onTap: () {
                                                              onTapImgFacebook(
                                                                  context);
                                                            }),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 8),
                                                            child: Text(
                                                                "4000 sqft",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))))
                                                      ]))
                                            ])),
                                        Padding(
                                            padding: getPadding(top: 31),
                                            child: Text("Description",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold20)),
                                        Container(
                                            width: getHorizontalSize(370),
                                            margin:
                                                getMargin(top: 14, right: 33),
                                            child: RichText(
                                                text: TextSpan(children: [
                                                  TextSpan(
                                                      text:
                                                          "Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi ut aliquip ex ea commodo consequat. Duis aute irure dolor in cillum pariatur. ",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .gray100,
                                                          fontSize:
                                                              getFontSize(14),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.2))),
                                                  TextSpan(
                                                      text: "Read more...",
                                                      style: TextStyle(
                                                          color: ColorConstant
                                                              .cyan60001,
                                                          fontSize:
                                                              getFontSize(14),
                                                          fontFamily:
                                                              'Urbanist',
                                                          fontWeight:
                                                              FontWeight.w700,
                                                          letterSpacing:
                                                              getHorizontalSize(
                                                                  0.2)))
                                                ]),
                                                textAlign: TextAlign.left)),
                                        Padding(
                                            padding: getPadding(top: 27),
                                            child: Text("Facilites",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold20)),
                                        Padding(
                                            padding: getPadding(
                                                left: 2, top: 20, right: 47),
                                            child: Row(children: [
                                              Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgCutCyan600,
                                                        height:
                                                            getVerticalSize(24),
                                                        width:
                                                            getHorizontalSize(
                                                                26)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 12),
                                                        child: Text(
                                                            "Swimming Pool",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanMedium12
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.2))))
                                                  ]),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 41,
                                                      top: 2,
                                                      bottom: 1),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgSignalCyan600,
                                                            height:
                                                                getVerticalSize(
                                                                    18),
                                                            width:
                                                                getHorizontalSize(
                                                                    26)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 13),
                                                            child: Text("WiFi",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))))
                                                      ])),
                                              const Spacer(),
                                              Padding(
                                                  padding:
                                                      getPadding(bottom: 1),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgCutCyan60023x25,
                                                            height:
                                                                getVerticalSize(
                                                                    23),
                                                            width:
                                                                getHorizontalSize(
                                                                    25)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 11),
                                                            child: Text(
                                                                "Restaurant",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(left: 45),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgTwitter,
                                                            height:
                                                                getVerticalSize(
                                                                    24),
                                                            width:
                                                                getHorizontalSize(
                                                                    32),
                                                            onTap: () {
                                                              onTapImgTwitter(
                                                                  context);
                                                            }),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 12),
                                                            child: Text(
                                                                "Parking",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))))
                                                      ]))
                                            ])),
                                        Padding(
                                            padding: getPadding(
                                                left: 4, top: 21, right: 26),
                                            child: Row(children: [
                                              Column(
                                                  mainAxisAlignment:
                                                      MainAxisAlignment.start,
                                                  children: [
                                                    CustomImageView(
                                                        svgPath: ImageConstant
                                                            .imgOffer,
                                                        height:
                                                            getVerticalSize(26),
                                                        width:
                                                            getHorizontalSize(
                                                                21)),
                                                    Padding(
                                                        padding:
                                                            getPadding(top: 11),
                                                        child: Text(
                                                            "Meeting Room",
                                                            overflow:
                                                                TextOverflow
                                                                    .ellipsis,
                                                            textAlign:
                                                                TextAlign.left,
                                                            style: AppStyle
                                                                .txtUrbanistRomanMedium12
                                                                .copyWith(
                                                                    letterSpacing:
                                                                        getHorizontalSize(
                                                                            0.2))))
                                                  ]),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 34,
                                                      top: 1,
                                                      bottom: 1),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgFrameCyan600,
                                                            height: getSize(24),
                                                            width: getSize(24)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 11),
                                                            child: Text(
                                                                "Elevator",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 34, bottom: 1),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgFrame1,
                                                            height: getSize(26),
                                                            width: getSize(26)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 9),
                                                            child: Text(
                                                                "Fitness Center",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))))
                                                      ])),
                                              Padding(
                                                  padding: getPadding(left: 15),
                                                  child: Column(
                                                      mainAxisAlignment:
                                                          MainAxisAlignment
                                                              .start,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath:
                                                                ImageConstant
                                                                    .imgVector,
                                                            height: getSize(26),
                                                            width: getSize(26)),
                                                        Padding(
                                                            padding: getPadding(
                                                                top: 11),
                                                            child: Text(
                                                                "24-hours Open",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtUrbanistRomanMedium12
                                                                    .copyWith(
                                                                        letterSpacing:
                                                                            getHorizontalSize(0.2))))
                                                      ]))
                                            ])),
                                        Padding(
                                            padding: getPadding(top: 28),
                                            child: Text("Location",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtUrbanistRomanBold20)),
                                        Container(
                                            height: getVerticalSize(180),
                                            width: getHorizontalSize(380),
                                            margin: getMargin(top: 15),
                                            child: Stack(
                                                alignment: Alignment.center,
                                                children: [
                                                  SizedBox(
                                                      height:
                                                          getVerticalSize(180),
                                                      width: getHorizontalSize(
                                                          380),
                                                      child: GoogleMap(
                                                          mapType: MapType
                                                              .normal,
                                                          initialCameraPosition:
                                                              const CameraPosition(
                                                                  target: LatLng(
                                                                      37.43296265331129,
                                                                      -122.08832357078792),
                                                                  zoom:
                                                                      14.4746),
                                                          onMapCreated:
                                                              (GoogleMapController
                                                                  controller) {
                                                            googleMapController
                                                                .complete(
                                                                    controller);
                                                          },
                                                          zoomControlsEnabled:
                                                              false,
                                                          zoomGesturesEnabled:
                                                              false,
                                                          myLocationButtonEnabled:
                                                              false,
                                                          myLocationEnabled:
                                                              false)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgLocation,
                                                      height: getSize(40),
                                                      width: getSize(40),
                                                      alignment:
                                                          Alignment.center)
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 30, right: 24),
                                            child: Row(children: [
                                              Text("Review",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtUrbanistRomanBold20),
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgStar12x12,
                                                  height: getSize(16),
                                                  width: getSize(16),
                                                  margin: getMargin(
                                                      left: 12,
                                                      top: 3,
                                                      bottom: 4)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4,
                                                      top: 2,
                                                      bottom: 1),
                                                  child: Text("4.8",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistSemiBold16
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.2)))),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 8,
                                                      top: 4,
                                                      bottom: 4),
                                                  child: Text("(4,981 reviews)",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRegular12
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.2)))),
                                              const Spacer(),
                                              GestureDetector(
                                                  onTap: () {
                                                    onTapTxtSeeallOne(context);
                                                  },
                                                  child: Padding(
                                                      padding: getPadding(
                                                          top: 1, bottom: 2),
                                                      child: Text("See All",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtUrbanistRomanBold16Cyan60001
                                                              .copyWith(
                                                                  letterSpacing:
                                                                      getHorizontalSize(
                                                                          0.2)))))
                                            ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 19, right: 24),
                                            child: ListView.separated(
                                                physics:
                                                    const NeverScrollableScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(20));
                                                },
                                                itemCount: 3,
                                                itemBuilder: (context, index) {
                                                  return const HotelDetailsItemWidget();
                                                })),
                                        CustomDropDown(
                                            focusNode: FocusNode(),
                                            icon: Container(
                                                margin: getMargin(
                                                    left: 16, right: 153),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdownCyan6000120x20)),
                                            hintText: "More",
                                            margin:
                                                getMargin(top: 20, right: 24),
                                            variant:
                                                DropDownVariant.FillGray800,
                                            shape:
                                                DropDownShape.RoundedBorder27,
                                            padding: DropDownPadding.PaddingT16,
                                            fontStyle: DropDownFontStyle
                                                .UrbanistRomanBold16WhiteA700,
                                            items: dropdownItemList,
                                            onChanged: (value) {}),
                                        Padding(
                                            padding:
                                                getPadding(top: 53, right: 24),
                                            child: Row(children: [
                                              Padding(
                                                  padding: getPadding(
                                                      top: 9, bottom: 9),
                                                  child: Text("29",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRomanBold32Cyan60001)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 4,
                                                      top: 27,
                                                      bottom: 13),
                                                  child: Text("/ night",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtUrbanistRegular14Gray200
                                                          .copyWith(
                                                              letterSpacing:
                                                                  getHorizontalSize(
                                                                      0.2)))),
                                              CustomButton(
                                                  height: getVerticalSize(58),
                                                  width: getHorizontalSize(263),
                                                  text: "Book Now!",
                                                  margin: getMargin(left: 16),
                                                  variant: ButtonVariant
                                                      .OutlineGreenA7003f,
                                                  onTap: () {
                                                    onTapBooknow(context);
                                                  })
                                            ]))
                                      ]))))
                    ]))));
  }

  onTapArrowleft8(BuildContext context) {
    Navigator.pop(context);
  }

  onTapTxtSeeall(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.galleryScreen);
  }

  onTapImgFacebook(BuildContext context) async {
    var url = 'https://www.facebook.com/login/';
    // ignore: deprecated_member_use
    if (!await launch(url)) {
      throw 'Could not launch https://www.facebook.com/login/';
    }
  }

  onTapImgTwitter(BuildContext context) async {
    var url = 'https://twitter.com/login/';
    // ignore: deprecated_member_use
    if (!await launch(url)) {
      throw 'Could not launch https://twitter.com/login/';
    }
  }

  onTapTxtSeeallOne(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.reviewScreen);
  }

  onTapBooknow(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.selectDateGuestScreen);
  }
}
