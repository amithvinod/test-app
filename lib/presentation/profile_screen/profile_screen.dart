import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:quikart_s_application1/core/app_export.dart';
import 'package:quikart_s_application1/presentation/my_orders_page/my_orders_page.dart';
import 'package:quikart_s_application1/widgets/custom_bottom_bar.dart';
import 'package:quikart_s_application1/widgets/custom_button.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends StatelessWidget {
  ProfileScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.whiteA700,
            body: Container(
                width: size.width,
                height: size.height,
                decoration: BoxDecoration(
                    color: ColorConstant.whiteA700,
                    image: DecorationImage(
                        image: AssetImage(ImageConstant.imgGroup83),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 25, right: 25),
                    child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Container(
                              width: getSize(80),
                              padding: getPadding(
                                  left: 26, top: 24, right: 26, bottom: 24),
                              decoration: AppDecoration.txtFillDeeppurple200
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtCircleBorder40),
                              child: Text("Jk",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtRobotoRomanBold24)),
                          Container(
                              margin: getMargin(left: 1, top: 33),
                              decoration: AppDecoration.outline.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder7),
                              child: OutlineGradientButton(
                                  padding: EdgeInsets.only(
                                      left: getHorizontalSize(1),
                                      top: getVerticalSize(1),
                                      right: getHorizontalSize(1),
                                      bottom: getVerticalSize(1)),
                                  strokeWidth: getHorizontalSize(1),
                                  gradient: LinearGradient(
                                      begin: Alignment(0.05, 0),
                                      end: Alignment(0.95, 1.09),
                                      colors: [
                                        ColorConstant.tealA100,
                                        ColorConstant.cyan300
                                      ]),
                                  corners: Corners(
                                      topLeft: Radius.circular(8),
                                      topRight: Radius.circular(8),
                                      bottomLeft: Radius.circular(8),
                                      bottomRight: Radius.circular(8)),
                                  child: Padding(
                                      padding: getPadding(
                                          left: 16,
                                          top: 10,
                                          right: 16,
                                          bottom: 10),
                                      child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceBetween,
                                          children: [
                                            Padding(
                                                padding: getPadding(top: 2),
                                                child: Column(
                                                    crossAxisAlignment:
                                                        CrossAxisAlignment
                                                            .start,
                                                    mainAxisAlignment:
                                                        MainAxisAlignment.start,
                                                    children: [
                                                      Text("Jasmine Kate",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanBold16),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 9),
                                                          child: Text(
                                                              "JasmineKate001@gmail.com",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRomanRegular16)),
                                                      Padding(
                                                          padding: getPadding(
                                                              top: 6),
                                                          child: Text(
                                                              "121-224-7890",
                                                              overflow:
                                                                  TextOverflow
                                                                      .ellipsis,
                                                              textAlign:
                                                                  TextAlign
                                                                      .left,
                                                              style: AppStyle
                                                                  .txtRobotoRomanRegular16))
                                                    ])),
                                            Padding(
                                                padding: getPadding(
                                                    top: 28,
                                                    right: 4,
                                                    bottom: 25),
                                                child: Text("Edit",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRomanBold18))
                                          ])))),
                          Padding(
                              padding: getPadding(left: 1, top: 12),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: CustomButton(
                                            height: getVerticalSize(54),
                                            text: "Orders",
                                            margin: getMargin(right: 5),
                                            prefixWidget: Container(
                                                margin: getMargin(right: 7),
                                                decoration: BoxDecoration(
                                                    color: ColorConstant
                                                        .cyan20001),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgArrowdown)),
                                            onTap: () {
                                              onTapOrders(context);
                                            })),
                                    Expanded(
                                        child: CustomButton(
                                            height: getVerticalSize(54),
                                            text: "Wishlist",
                                            margin: getMargin(left: 5),
                                            prefixWidget: Container(
                                                margin: getMargin(right: 4),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgPhheartfill)),
                                            onTap: () {
                                              onTapWishlist(context);
                                            }))
                                  ])),
                          Padding(
                              padding: getPadding(left: 1, top: 12),
                              child: Row(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Expanded(
                                        child: CustomButton(
                                            height: getVerticalSize(54),
                                            text: "Address",
                                            margin: getMargin(right: 5),
                                            prefixWidget: Container(
                                                margin: getMargin(right: 6),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgMdilocation)),
                                            onTap: () {
                                              onTapAddress(context);
                                            })),
                                    Expanded(
                                        child: CustomButton(
                                            height: getVerticalSize(54),
                                            text: "Saved cards",
                                            margin: getMargin(left: 5),
                                            prefixWidget: Container(
                                                margin: getMargin(right: 3),
                                                child: CustomImageView(
                                                    svgPath: ImageConstant
                                                        .imgQuillcreditcard)),
                                            onTap: () {
                                              onTapSavedcards(context);
                                            }))
                                  ])),
                          Container(
                              margin: getMargin(left: 1, top: 12),
                              padding: getPadding(
                                  left: 12, top: 16, right: 12, bottom: 16),
                              decoration: AppDecoration.outlineTeal10001
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder7),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 4, top: 2, bottom: 2),
                                        child: Text("Tickets",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular16Black90001)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getSize(24),
                                        width: getSize(24))
                                  ])),
                          Container(
                              margin: getMargin(left: 1, top: 8),
                              padding: getPadding(
                                  left: 12, top: 16, right: 12, bottom: 16),
                              decoration: AppDecoration.outlineTeal10001
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder7),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 4, top: 4),
                                        child: Text("Privacy Statement",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular16Black90001)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getSize(24),
                                        width: getSize(24))
                                  ])),
                          Container(
                              margin: getMargin(left: 1, top: 8),
                              padding: getPadding(
                                  left: 12, top: 16, right: 12, bottom: 16),
                              decoration: AppDecoration.outlineTeal10001
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.roundedBorder7),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Padding(
                                        padding: getPadding(
                                            left: 4, top: 2, bottom: 2),
                                        child: Text("Connect with us",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtRobotoRomanRegular16Black90001)),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgArrowright,
                                        height: getSize(24),
                                        width: getSize(24))
                                  ])),
                          Container(
                              width: getHorizontalSize(342),
                              margin: getMargin(top: 8, bottom: 4),
                              padding: getPadding(
                                  left: 30, top: 17, right: 133, bottom: 17),
                              decoration: AppDecoration.txtOutlineRed300
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtRoundedBorder8),
                              child: Text("Sign Out",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style:
                                      AppStyle.txtRobotoRomanRegular16Red80001))
                        ]))),
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
        return AppRoutes.myOrdersPage;
      case BottomBarEnum.Fluentperson48regular:
        return "/";
      case BottomBarEnum.Shoppingcart:
        return "/";
      case BottomBarEnum.Febar:
        return "/";
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.myOrdersPage:
        return MyOrdersPage();
      default:
        return DefaultWidget();
    }
  }

  /// Navigates to the myOrdersContainerScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the myOrdersContainerScreen.
  onTapOrders(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.myOrdersContainerScreen);
  }

  /// Navigates to the whishlistScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the whishlistScreen.
  onTapWishlist(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.whishlistScreen);
  }

  /// Navigates to the addressScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the addressScreen.
  onTapAddress(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addressScreen);
  }

  /// Navigates to the addAddressScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the addAddressScreen.
  onTapSavedcards(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.addAddressScreen);
  }
}
