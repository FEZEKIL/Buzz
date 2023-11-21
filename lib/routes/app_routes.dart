import 'package:flutter/material.dart';

import '../add_new_card_screen/add_new_card_screen.dart';
import '../app_navigation_screen/app_navigation_screen.dart';
import '../authentications/fill_profile_screen.dart';
import '../authentications/sign_in_page.dart';
import '../authentications/sign_up_page.dart';
import '../booking_name_screen/booking_name_screen.dart';
import '../card_added_screen/card_added_screen.dart';
import '../choose_payment_method_screen/choose_payment_method_screen.dart';
import '../confirm_payment_screen/confirm_payment_screen.dart';
import '../create_new_password_screen/create_new_password_screen.dart';
import '../edit_profile_screen/edit_profile_screen.dart';
import '../filter_result_screen/filter_result_screen.dart';
import '../forgot_password_filled_type_screen/forgot_password_filled_type_screen.dart';
import '../forgot_password_screen/forgot_password_screen.dart';
import '../forgot_password_type_otp_screen/forgot_password_type_otp_screen.dart';
import '../gallery_screen/gallery_screen.dart';
import '../home_screen_container_screen/home_screen_container_screen.dart';
import '../hotel_details_screen/hotel_details_screen.dart';
import '../location_screen/location_screen.dart';
import '../my_bookmarks_screen/my_bookmarks_screen.dart';
import '../notification_settings_screen/notification_settings_screen.dart';
import '../notifications_screen/notifications_screen.dart';
import '../recently_booked_screen/recently_booked_screen.dart';
import '../refund_method_screen/refund_method_screen.dart';
import '../review_screen/review_screen.dart';
import '../search_type_screen/search_type_screen.dart';
import '../security_screen/security_screen.dart';
import '../select_date_guest_screen/select_date_guest_screen.dart';
import '../view_ticket_screen/view_ticket_screen.dart';
import '../welcome/lets_you_in_screen.dart';
import '../welcome/onboarding_one.dart';
import '../welcome/onboarding_three.dart';
import '../welcome/onboarding_two.dart';
import '../welcome/welcome_screen.dart';


class AppRoutes {
  static const String splashScreen = '/splash_screen';

  static const String welcomeScreen = '/welcome_screen';

  static const String onboardingOneScreen = '/onboarding_one_screen';

  static const String onboardingTwoScreen = '/onboarding_two_screen';

  static const String onboardingThreeScreen = '/onboarding_three_screen';

  static const String letSYouInScreen = '/let_s_you_in_screen';

  static const String signUpScreen = '/sign_up_screen';

  static const String signInScreen = '/sign_in_screen';

  static const String fillProfileScreen = '/fill_profile_screen';

  static const String forgotPasswordScreen = '/forgot_password_screen';

  static const String forgotPasswordTypeOtpScreen =
      '/forgot_password_type_otp_screen';

  static const String forgotPasswordFilledTypeScreen =
      '/forgot_password_filled_type_screen';

  static const String createNewPasswordScreen = '/create_new_password_screen';

  static const String homeScreenPage = '/home_screen_page';

  static const String homeScreenContainerScreen =
      '/home_screen_container_screen';

  static const String recentlyBookedScreen = '/recently_booked_screen';

  static const String notificationsScreen = '/notifications_screen';

  static const String myBookmarksScreen = '/my_bookmarks_screen';

  static const String searchPage = '/search_page';

  static const String searchTypeScreen = '/search_type_screen';

  static const String filterResultScreen = '/filter_result_screen';

  static const String hotelDetailsScreen = '/hotel_details_screen';

  static const String galleryScreen = '/gallery_screen';

  static const String locationScreen = '/location_screen';

  static const String reviewScreen = '/review_screen';

  static const String selectDateGuestScreen = '/select_date_guest_screen';

  static const String bookingNameScreen = '/booking_name_screen';

  static const String choosePaymentMethodScreen =
      '/choose_payment_method_screen';

  static const String addNewCardScreen = '/add_new_card_screen';

  static const String cardAddedScreen = '/card_added_screen';

  static const String confirmPaymentScreen = '/confirm_payment_screen';

  static const String viewTicketScreen = '/view_ticket_screen';

  static const String bookingOngoingPage = '/booking_ongoing_page';

  static const String bookingOngoingTabContainerPage =
      '/booking_ongoing_tab_container_page';

  static const String bookingCompletedPage = '/booking_completed_page';

  static const String bookingCancelledPage = '/booking_cancelled_page';

  static const String refundMethodScreen = '/refund_method_screen';

  static const String profileSettingsPage = '/profile_settings_page';

  static const String editProfileScreen = '/edit_profile_screen';

  static const String notificationSettingsScreen =
      '/notification_settings_screen';

  static const String securityScreen = '/security_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    // splashScreen: (context) => SplashScreen(),
    welcomeScreen: (context) => const WelcomeScreen(),
    onboardingOneScreen: (context) => const OnboardingOneScreen(),
    onboardingTwoScreen: (context) => const OnboardingTwoScreen(),
    onboardingThreeScreen: (context) => const OnboardingThreeScreen(),
    letSYouInScreen: (context) => const LetSYouInScreen(),
    signUpScreen: (context) => SignUpScreen(),
    signInScreen: (context) => SignInScreen(),
    fillProfileScreen: (context) => FillProfileScreen(),
    forgotPasswordScreen: (context) => const ForgotPasswordScreen(),
    forgotPasswordTypeOtpScreen: (context) => const ForgotPasswordTypeOtpScreen(),
    forgotPasswordFilledTypeScreen: (context) =>  const ForgotPasswordFilledTypeScreen(),
    createNewPasswordScreen: (context) => CreateNewPasswordScreen(),
    homeScreenContainerScreen: (context) => HomeScreenContainerScreen(),
    recentlyBookedScreen: (context) => const RecentlyBookedScreen(),
    notificationsScreen: (context) => NotificationsScreen(),
    myBookmarksScreen: (context) => const MyBookmarksScreen(),
    searchTypeScreen: (context) => SearchTypeScreen(),
    filterResultScreen: (context) => FilterResultScreen(),
    hotelDetailsScreen: (context) => HotelDetailsScreen(),
    galleryScreen: (context) => const GalleryScreen(),
    locationScreen: (context) => LocationScreen(),
    reviewScreen: (context) => const ReviewScreen(),
    selectDateGuestScreen: (context) => SelectDateGuestScreen(),
    bookingNameScreen: (context) => BookingNameScreen(),
    choosePaymentMethodScreen: (context) => const ChoosePaymentMethodScreen(),
    addNewCardScreen: (context) => AddNewCardScreen(),
    cardAddedScreen: (context) => const CardAddedScreen(),
    confirmPaymentScreen: (context) => const ConfirmPaymentScreen(),
    viewTicketScreen: (context) => const ViewTicketScreen(),
    refundMethodScreen: (context) => const RefundMethodScreen(),
    editProfileScreen: (context) => EditProfileScreen(),
    notificationSettingsScreen: (context) => NotificationSettingsScreen(),
    securityScreen: (context) => SecurityScreen(),
    appNavigationScreen: (context) => const AppNavigationScreen()
  };
}
