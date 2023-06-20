import 'package:flutter/material.dart';
import 'package:quikart_s_application1/core/app_export.dart';
import 'package:quikart_s_application1/presentation/my_orders_page/my_orders_page.dart';
import 'package:quikart_s_application1/widgets/custom_bottom_bar.dart';

// ignore_for_file: must_be_immutable
class AddAddressOneScreen extends StatelessWidget {
  AddAddressOneScreen({Key? key}) : super(key: key);

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
                        image: AssetImage(ImageConstant.imgSignuptwo),
                        fit: BoxFit.cover)),
                child: SizedBox(
                    width: double.maxFinite,
                    child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.end,
                        children: [
                          Padding(
                              padding: getPadding(left: 33, top: 93),
                              child: Row(children: [
                                CustomImageView(
                                    svgPath: ImageConstant.imgArrowleft,
                                    height: getVerticalSize(26),
                                    width: getHorizontalSize(36),
                                    margin: getMargin(bottom: 3),
                                    onTap: () {
                                      onTapImgArrowleft(context);
                                    }),
                                Padding(
                                    padding: getPadding(left: 62),
                                    child: Text("Saved Cards",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRomanBold24Black900cc))
                              ])),
                          SizedBox(
                              width: double.maxFinite,
                              child: Container(
                                  margin: getMargin(top: 26),
                                  padding: getPadding(
                                      left: 24, top: 51, right: 24, bottom: 51),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Container(
                                            margin: getMargin(right: 3),
                                            padding: getPadding(
                                                left: 9,
                                                top: 24,
                                                right: 9,
                                                bottom: 24),
                                            decoration: AppDecoration
                                                .outlineBlack900
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder7),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 3,
                                                          top: 2,
                                                          bottom: 2),
                                                      child: Text("**** 4187",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular16Black90001)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgVolume,
                                                      height:
                                                          getVerticalSize(16),
                                                      width:
                                                          getHorizontalSize(24),
                                                      margin: getMargin(
                                                          left: 7,
                                                          top: 4,
                                                          bottom: 4)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getSize(24),
                                                      width: getSize(24))
                                                ])),
                                        Container(
                                            margin: getMargin(
                                                top: 24, right: 3, bottom: 412),
                                            padding: getPadding(
                                                left: 9,
                                                top: 24,
                                                right: 9,
                                                bottom: 24),
                                            decoration: AppDecoration
                                                .outlineBlack900
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder7),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 3,
                                                          top: 1,
                                                          bottom: 3),
                                                      child: Text("**** 9387",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtGTWalsheimProRegular16)),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgVolume,
                                                      height:
                                                          getVerticalSize(16),
                                                      width:
                                                          getHorizontalSize(24),
                                                      margin: getMargin(
                                                          left: 9,
                                                          top: 4,
                                                          bottom: 4)),
                                                  Spacer(),
                                                  CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgArrowright,
                                                      height: getSize(24),
                                                      width: getSize(24))
                                                ]))
                                      ])))
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

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
