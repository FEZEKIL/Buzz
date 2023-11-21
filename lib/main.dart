import 'package:buzz/pages/business_details.dart';
import 'package:buzz/pages/customer_home_screen.dart';
import 'package:buzz/welcome/lets_you_in_screen.dart';
import 'package:buzz/welcome/onboarding_one.dart';
import 'package:buzz/welcome/onboarding_three.dart';
import 'package:buzz/welcome/onboarding_two.dart';
import 'package:buzz/welcome/welcome_screen.dart';

import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';



import 'authentications/fill_profile_screen.dart';
import 'authentications/sign_in_page.dart';
import 'authentications/sign_up_page.dart';
import 'create_new_password_screen/create_new_password_screen.dart';
import 'forgot_password_filled_type_screen/forgot_password_filled_type_screen.dart';
import 'forgot_password_screen/forgot_password_screen.dart';
import 'forgot_password_type_otp_screen/forgot_password_type_otp_screen.dart';
import 'home_screen_container_screen/home_screen_container_screen.dart';



void main() async  {
   WidgetsFlutterBinding.ensureInitialized();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      
      debugShowCheckedModeBanner: false,
      //home: CustomerHomeScreen(),
      initialRoute: '/onboarding_one_screen',
      routes: {
        '/welcome_screen': (context) => const WelcomeScreen(),
       '/onboarding_one_screen':  (context) => const OnboardingOneScreen(),
       '/onboarding_two_screen':  (context) => const OnboardingTwoScreen(),
       '/onboarding_three_screen':  (context) => const OnboardingThreeScreen(),
       '/let_s_you_in_screen': (context) => const LetSYouInScreen(),
         '/sign_in_screen':  (context) =>  SignInScreen(),
        '/sign_up_screen' : (context) =>  SignUpScreen(),
        '/fill_profile_screen' : (context) => FillProfileScreen(),
       '/forgot_password_screen' : (context) => const ForgotPasswordScreen(),
       '/ForgotPasswordTypeOtpScreen': (context) => const ForgotPasswordTypeOtpScreen(),
       '/forgot_password_filled_type_screen': (context) => const ForgotPasswordFilledTypeScreen(),
       '/create_new_password_screen' : (context) => CreateNewPasswordScreen(),
       '/home_screen_page': (context) => HomeScreenContainerScreen(),
        '/customer_home': (context) => const CustomerHomeScreen(),
        '/business_details' : (context) => const BusinessDetails(),
      },
      
    );
  }
}
