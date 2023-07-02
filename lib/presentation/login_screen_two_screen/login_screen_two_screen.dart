import 'package:flutter/material.dart';
import 'package:quikart_s_application1/core/app_export.dart';
import 'package:quikart_s_application1/widgets/custom_button.dart';

class LoginScreenTwoScreen extends StatelessWidget {
  const LoginScreenTwoScreen({Key? key}) : super(key: key);

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
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              imagePath: ImageConstant.imgQuikarthighre,
                              height: getVerticalSize(389),
                              width: getHorizontalSize(393),
                              onTap: () {
                                onTapImgQuikarthighre(context);
                              }),
                          Container(
                              height: getVerticalSize(85),
                              width: getHorizontalSize(297),
                              margin: getMargin(top: 17),
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Text("Millions of products.",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsSemiBold3014)),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Text("Fast Reliable Secure.",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle
                                                .txtPoppinsSemiBold3015))
                                  ])),
                          CustomButton(
                              onTap: () {
                                onTapContinue(context);
                              },
                              height: getVerticalSize(46),
                              text: "Sign up free",
                              margin: getMargin(left: 25, top: 59, right: 31),
                              variant: ButtonVariant.OutlineWhiteA700_1,
                              shape: ButtonShape.CircleBorder23,
                              padding: ButtonPadding.PaddingAll10,
                              fontStyle: ButtonFontStyle.PoppinsSemiBold1669),
                              
                          Container(
                              margin: getMargin(left: 28, top: 9, right: 27),
                              padding: getPadding(top: 6, bottom: 6),
                              decoration: AppDecoration.outlineWhiteA700
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder19),
                              child: Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceAround,
                                  children: [
                                    CustomImageView(
                                        svgPath: ImageConstant.imgMobile,
                                        height: getVerticalSize(22),
                                        width: getHorizontalSize(12),
                                        margin: getMargin(bottom: 3)),
                                    CustomButton(
                                        onTap: () {
                                          onTapContinueWithMobile(context);
                                        },
                                        height: getVerticalSize(46),
                                        text: "Continue with Mobile",
                                        width: 300,
                                        margin: getMargin(
                                            left: 25, top: 0, right: 30),
                                        variant: ButtonVariant.OutlineWhiteA700,
                                        padding: ButtonPadding.PaddingAll10,
                                        fontStyle:
                                            ButtonFontStyle.PoppinsSemiBold1669)
                                  ])),
                          Container(
                              margin: getMargin(left: 25, top: 5, right: 30),
                              padding: getPadding(
                                  left: 18, top: 6, right: 18, bottom: 6),
                              decoration: AppDecoration.outlineWhiteA700
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder19),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.end,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgGoogle,
                                        height: getVerticalSize(17),
                                        width: getHorizontalSize(22),
                                        margin: getMargin(top: 4, bottom: 2)),
                                    Padding(
                                        padding: getPadding(
                                            left: 53, top: 1, right: 76),
                                        child: Text("continue with Google",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsRegular1469))
                                  ])),
                          Container(
                              margin: getMargin(left: 25, top: 4, right: 30),
                              padding: getPadding(
                                  left: 18, top: 6, right: 18, bottom: 6),
                              decoration: AppDecoration.outlineWhiteA7009b
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.circleBorder19),
                              child: Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgFacebook,
                                        height: getVerticalSize(16),
                                        width: getHorizontalSize(24),
                                        margin: getMargin(top: 1, bottom: 5)),
                                    Padding(
                                        padding: getPadding(
                                            left: 43, top: 1, right: 66),
                                        child: Text("continue with Facebook",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style:
                                                AppStyle.txtPoppinsRegular1469))
                                  ])),
                          Padding(
                              padding: getPadding(top: 19, bottom: 5),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "already a user? ",
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize:
                                                getFontSize(14.6899995803833),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w400)),
                                    TextSpan(
                                        text: "sign in",
                                        style: TextStyle(
                                            color: ColorConstant.black900,
                                            fontSize:
                                                getFontSize(14.6899995803833),
                                            fontFamily: 'Inter',
                                            fontWeight: FontWeight.w600))
                                  ]),
                                  textAlign: TextAlign.left))
                        ])))));
  }

  /// Navigates to the homepageScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the homepageScreen.
  onTapImgQuikarthighre(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.homepageScreen);
  }
   onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpOneScreen);
  }
  onTapContinueWithMobile(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signInOneScreen);
  }
}
