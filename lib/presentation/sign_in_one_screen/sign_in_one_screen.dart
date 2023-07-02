import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quikart_s_application1/core/app_export.dart';
import 'package:quikart_s_application1/services/firebase_auth_method.dart';
import 'package:quikart_s_application1/widgets/custom_button.dart';
import 'package:quikart_s_application1/widgets/custom_text_form_field.dart';

class SignInOneScreen extends StatelessWidget {
  SignInOneScreen({Key? key}) : super(key: key);
  final TextEditingController phoneController = TextEditingController();

  void phoneSignIn(BuildContext context) {
    FirebaseAuthMethods(FirebaseAuth.instance).phoneSignIn(
      context, phoneController.text
    );
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: ColorConstant.whiteA700,
            body: SizedBox(
                height: size.height,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup2,
                      height: getVerticalSize(740),
                      width: getHorizontalSize(393),
                      alignment: Alignment.topCenter),
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SingleChildScrollView(
                          child: SizedBox(
                              height: getVerticalSize(816),
                              width: double.maxFinite,
                              child: Stack(
                                  alignment: Alignment.topLeft,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: SizedBox(
                                            height: getVerticalSize(783),
                                            width: double.maxFinite,
                                            child: Stack(
                                                alignment: Alignment.topCenter,
                                                children: [
                                                  CustomImageView(
                                                      imagePath: ImageConstant
                                                          .imgEllipse7,
                                                      height:
                                                          getVerticalSize(724),
                                                      width: getHorizontalSize(
                                                          393),
                                                      alignment:
                                                          Alignment.topCenter),
                                                  Align(
                                                      alignment:
                                                          Alignment.topCenter,
                                                      child: Padding(
                                                          padding: getPadding(
                                                              left: 25,
                                                              top: 84,
                                                              right: 18),
                                                          child: Column(
                                                              mainAxisSize:
                                                                  MainAxisSize
                                                                      .min,
                                                              crossAxisAlignment:
                                                                  CrossAxisAlignment
                                                                      .start,
                                                              mainAxisAlignment:
                                                                  MainAxisAlignment
                                                                      .start,
                                                              children: [
                                                                Padding(
                                                                    padding:
                                                                        getPadding(
                                                                            left:
                                                                                6),
                                                                    child: Text(
                                                                        "Sign in",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsSemiBold3015)),
                                                                Container(
                                                                    margin:
                                                                        getMargin(
                                                                            top:
                                                                                9),
                                                                    padding: getPadding(
                                                                        left:
                                                                            31,
                                                                        top: 3,
                                                                        right:
                                                                            31,
                                                                        bottom:
                                                                            3),
                                                                    decoration: AppDecoration
                                                                        .outlineWhiteA700
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .circleBorder23),
                                                                    child: Row(
                                                                        children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgFamobile,
                                                                              height: getVerticalSize(30),
                                                                              width: getHorizontalSize(18),
                                                                              margin: getMargin(top: 4, bottom: 4)),
                                                                          CustomTextFormField(
                                                                            controller: phoneController,
                                                                            hintText: "Enter Phone",
                                                                            width: 300,
                                                                            alignment: Alignment.centerLeft,
                                                                          )
                                                                          ])),
                                                                CustomButton(
                                                                    height:
                                                                        getVerticalSize(
                                                                            46),
                                                                    text:
                                                                        "Send OTP",
                                                                      onTap: () {
                                                                        phoneSignIn(context);
                                                                      },
                                                                    margin: getMargin(
                                                                        left: 4,
                                                                        top: 91,
                                                                        right:
                                                                            8),
                                                                    variant:
                                                                        ButtonVariant
                                                                            .OutlineWhiteA700_2,
                                                                    shape: ButtonShape
                                                                        .CircleBorder23,
                                                                    padding:
                                                                        ButtonPadding
                                                                            .PaddingAll5,
                                                                    fontStyle:
                                                                        ButtonFontStyle
                                                                            .PoppinsSemiBold2369)
                                                              ])))
                                                ]))),
                                    CustomImageView(
                                        svgPath: ImageConstant.imgEpback,
                                        height: getSize(49),
                                        width: getSize(49),
                                        alignment: Alignment.topLeft,
                                        margin: getMargin(left: 25),
                                        onTap: () {
                                          onTapImgEpback(context);
                                        })
                                  ]))))
                ]))));
  }

  /// Navigates to the loginScreenTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the loginScreenTwoScreen.
  onTapImgEpback(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.loginScreenTwoScreen);
  }
}
