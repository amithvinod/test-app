import 'package:flutter/material.dart';
import 'package:quikart_s_application1/presentation/sign_up_two_screen/sign_up_two_screen.dart';
import 'package:quikart_s_application1/presentation/login_screen_two_screen/login_screen_two_screen.dart';
import 'package:quikart_s_application1/presentation/sign_up_one_screen/sign_up_one_screen.dart';
import 'package:quikart_s_application1/presentation/sign_in_one_screen/sign_in_one_screen.dart';
import 'package:quikart_s_application1/presentation/homepage_screen/homepage_screen.dart';
import 'package:quikart_s_application1/presentation/search_screen/search_screen.dart';
import 'package:quikart_s_application1/presentation/profile_screen/profile_screen.dart';
import 'package:quikart_s_application1/presentation/my_orders_container_screen/my_orders_container_screen.dart';
import 'package:quikart_s_application1/presentation/whishlist_screen/whishlist_screen.dart';
import 'package:quikart_s_application1/presentation/address_screen/address_screen.dart';
import 'package:quikart_s_application1/presentation/add_address_screen/add_address_screen.dart';
import 'package:quikart_s_application1/presentation/add_address_one_screen/add_address_one_screen.dart';
import 'package:quikart_s_application1/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String signUpTwoScreen = '/sign_up_two_screen';

  static const String loginScreenTwoScreen = '/login_screen_two_screen';

  static const String signUpOneScreen = '/sign_up_one_screen';

  static const String signInOneScreen = '/sign_in_one_screen';

  static const String homepageScreen = '/homepage_screen';

  static const String searchScreen = '/search_screen';

  static const String profileScreen = '/profile_screen';

  static const String myOrdersPage = '/my_orders_page';

  static const String myOrdersContainerScreen = '/my_orders_container_screen';

  static const String whishlistScreen = '/whishlist_screen';

  static const String addressScreen = '/address_screen';

  static const String addAddressScreen = '/add_address_screen';

  static const String addAddressOneScreen = '/add_address_one_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    signUpTwoScreen: (context) => SignUpTwoScreen(),
    loginScreenTwoScreen: (context) => LoginScreenTwoScreen(),
    signUpOneScreen: (context) => SignUpOneScreen(),
    signInOneScreen: (context) => SignInOneScreen(),
    homepageScreen: (context) => HomepageScreen(),
    searchScreen: (context) => SearchScreen(),
    profileScreen: (context) => ProfileScreen(),
    myOrdersContainerScreen: (context) => MyOrdersContainerScreen(),
    whishlistScreen: (context) => WhishlistScreen(),
    addressScreen: (context) => AddressScreen(),
    addAddressScreen: (context) => AddAddressScreen(),
    addAddressOneScreen: (context) => AddAddressOneScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
