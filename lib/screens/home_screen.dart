import 'package:buzz/core/app_export.dart';
import 'package:buzz/booking_ongoing_tab_container_page/booking_ongoing_tab_container_page.dart';

import 'package:buzz/profile_settings_page/profile_settings_page.dart';
import 'package:buzz/search_page/search_page.dart';
import 'package:buzz/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

import '../home_screen_page/home_screen_page.dart';

// ignore_for_file: must_be_immutable
class HomeScreenContainerScreen extends StatelessWidget {
  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  HomeScreenContainerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.gray900,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.homeScreenPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: const Duration(seconds: 0))),
            bottomNavigationBar:
                CustomBottomBar(onChanged: (BottomBarEnum type) {
              Navigator.pushNamed(
                  navigatorKey.currentContext!, getCurrentRoute(type));
            })));
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Home:
        return AppRoutes.homeScreenPage;
      case BottomBarEnum.Search:
        return AppRoutes.searchPage;
      case BottomBarEnum.Booking:
        return AppRoutes.bookingOngoingTabContainerPage;
      case BottomBarEnum.Profile:
        return AppRoutes.profileSettingsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.homeScreenPage:
        return HomeScreenPage();
      case AppRoutes.searchPage:
        return SearchPage();
      case AppRoutes.bookingOngoingTabContainerPage:
        return const BookingOngoingTabContainerPage();
      case AppRoutes.profileSettingsPage:
        return ProfileSettingsPage();
      default:
        return const DefaultWidget();
    }
  }
}
