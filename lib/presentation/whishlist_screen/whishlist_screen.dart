import 'package:flutter/material.dart';
import 'package:quikart_s_application1/core/app_export.dart';
import 'package:quikart_s_application1/presentation/my_orders_page/my_orders_page.dart';
import 'package:quikart_s_application1/widgets/custom_bottom_bar.dart';
import 'package:quikart_s_application1/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class WhishlistScreen extends StatelessWidget {
  WhishlistScreen({Key? key}) : super(key: key);

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
                                    padding: getPadding(left: 84),
                                    child: Text("Wishlist",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRomanBold24Black900cc))
                              ])),
                          Container(
                              height: getVerticalSize(682),
                              width: double.maxFinite,
                              margin: getMargin(top: 27),
                              padding: getPadding(
                                  left: 9, top: 22, right: 9, bottom: 22),
                              decoration: AppDecoration.fillWhiteA700,
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            margin:
                                                getMargin(left: 1, bottom: 457),
                                            padding: getPadding(
                                                left: 21,
                                                top: 28,
                                                right: 21,
                                                bottom: 28),
                                            decoration: AppDecoration
                                                .outlineBlack9003f2
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder7),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .img26818261,
                                                      height: getSize(100),
                                                      width: getSize(100),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10)),
                                                      margin:
                                                          getMargin(top: 25)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 25,
                                                          bottom: 53),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "Minimal Stand",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular14),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: Text(
                                                                    " 25.00",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsSemiBold16))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 87, top: 25),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgClose,
                                                                height:
                                                                    getSize(24),
                                                                width: getSize(
                                                                    24)),
                                                            CustomIconButton(
                                                                height: 30,
                                                                width: 30,
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            46),
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgBag))
                                                          ]))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            margin: getMargin(
                                                left: 1, top: 163, bottom: 294),
                                            padding: getPadding(
                                                left: 21,
                                                top: 28,
                                                right: 21,
                                                bottom: 28),
                                            decoration: AppDecoration
                                                .outlineBlack9003f2
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder7),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .img26818261,
                                                      height: getSize(100),
                                                      width: getSize(100),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10)),
                                                      margin:
                                                          getMargin(top: 25)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 25,
                                                          bottom: 53),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "Minimal Stand",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular14),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: Text(
                                                                    " 25.00",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsSemiBold16))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 87, top: 25),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgClose,
                                                                height:
                                                                    getSize(24),
                                                                width: getSize(
                                                                    24)),
                                                            CustomIconButton(
                                                                height: 30,
                                                                width: 30,
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            46),
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgBag))
                                                          ]))
                                                ]))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Container(
                                            margin: getMargin(
                                                left: 1, top: 326, bottom: 131),
                                            padding: getPadding(
                                                left: 21,
                                                top: 28,
                                                right: 21,
                                                bottom: 28),
                                            decoration: AppDecoration
                                                .outlineBlack9003f2
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .roundedBorder7),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.end,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .img26818261,
                                                      height: getSize(100),
                                                      width: getSize(100),
                                                      radius:
                                                          BorderRadius.circular(
                                                              getHorizontalSize(
                                                                  10)),
                                                      margin:
                                                          getMargin(top: 25)),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 16,
                                                          top: 25,
                                                          bottom: 53),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .start,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            Text(
                                                                "Minimal Stand",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtPoppinsRegular14),
                                                            Padding(
                                                                padding:
                                                                    getPadding(
                                                                        top: 5),
                                                                child: Text(
                                                                    " 25.00",
                                                                    overflow:
                                                                        TextOverflow
                                                                            .ellipsis,
                                                                    textAlign:
                                                                        TextAlign
                                                                            .left,
                                                                    style: AppStyle
                                                                        .txtPoppinsSemiBold16))
                                                          ])),
                                                  Padding(
                                                      padding: getPadding(
                                                          left: 87, top: 25),
                                                      child: Column(
                                                          crossAxisAlignment:
                                                              CrossAxisAlignment
                                                                  .end,
                                                          mainAxisAlignment:
                                                              MainAxisAlignment
                                                                  .start,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgClose,
                                                                height:
                                                                    getSize(24),
                                                                width: getSize(
                                                                    24)),
                                                            CustomIconButton(
                                                                height: 30,
                                                                width: 30,
                                                                margin:
                                                                    getMargin(
                                                                        top:
                                                                            46),
                                                                child: CustomImageView(
                                                                    svgPath:
                                                                        ImageConstant
                                                                            .imgBag))
                                                          ]))
                                                ])))
                                  ]))
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
