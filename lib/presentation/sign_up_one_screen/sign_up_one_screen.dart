import 'package:firebase_auth/firebase_auth.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:quikart_s_application1/core/app_export.dart';
import 'package:quikart_s_application1/services/firebase_auth_method.dart';
import 'package:quikart_s_application1/widgets/custom_button.dart';
import 'package:quikart_s_application1/widgets/custom_text_form_field.dart';

class SignUpOneScreen extends StatelessWidget {
  SignUpOneScreen({Key? key}) : super(key: key);
  final TextEditingController emailController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();

  void signUpUser(BuildContext context) async {
    FirebaseAuthMethods(FirebaseAuth.instance).signUpWithEmail(
      email: emailController.text,
      password: passwordController.text,
      context: context,
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
                                                              right: 24),
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
                                                                        "Finish signing up",
                                                                        overflow:
                                                                            TextOverflow
                                                                                .ellipsis,
                                                                        textAlign:
                                                                            TextAlign
                                                                                .left,
                                                                        style: AppStyle
                                                                            .txtPoppinsSemiBold3015)),

                                                                Container(
                                                                    margin: getMargin(
                                                                        left: 6,
                                                                        top:
                                                                            19),
                                                                    padding: getPadding(
                                                                        left:
                                                                            19,
                                                                        top: 5,
                                                                        right:
                                                                            19,
                                                                        bottom:
                                                                            5),
                                                                    decoration: AppDecoration
                                                                        .outlineWhiteA700
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .circleBorder19),
                                                                    child: Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgIcoutlineemail,
                                                                              height: getVerticalSize(25),
                                                                              width: getHorizontalSize(24)),
                                                                          CustomTextFormField(
                                                                            controller: emailController,
                                                                            hintText: "Enter email",
                                                                            width: 300,
                                                                            alignment: Alignment.centerLeft,
                                                                          )
                                                                          ])),

                                                                // Container(
                                                                //     margin: getMargin(
                                                                //         left: 6,
                                                                //         top:
                                                                //             20),
                                                                //     padding: getPadding(
                                                                //         left:
                                                                //             20,
                                                                //         top: 6,
                                                                //         right:
                                                                //             20,
                                                                //         bottom:
                                                                //             6),
                                                                //     decoration: AppDecoration
                                                                //         .outlineWhiteA7009b
                                                                //         .copyWith(
                                                                //             borderRadius: BorderRadiusStyle
                                                                //                 .circleBorder19),
                                                                //     child: Row(
                                                                //         mainAxisSize:
                                                                //             MainAxisSize.min,
                                                                //         children: [
                                                                //           CustomImageView(
                                                                //               svgPath: ImageConstant.imgWpfname,
                                                                //               height: getVerticalSize(23),
                                                                //               width: getHorizontalSize(22)),
                                                                //           Padding(
                                                                //               padding: getPadding(left: 95, right: 137, bottom: 1),
                                                                //               child: Text("Name", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtPoppinsRegular1469Black90087))
                                                                //         ])),
                                                                Container(
                                                                    margin: getMargin(
                                                                        left: 6,
                                                                        top:
                                                                            15),
                                                                    padding: getPadding(
                                                                        left:
                                                                            25,
                                                                        top: 5,
                                                                        right:
                                                                            25,
                                                                        bottom:
                                                                            5),
                                                                    decoration: AppDecoration
                                                                        .outlineWhiteA700
                                                                        .copyWith(
                                                                            borderRadius: BorderRadiusStyle
                                                                                .circleBorder19),
                                                                    child: Row(
                                                                        mainAxisSize:
                                                                            MainAxisSize.min,
                                                                        children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgMobile,
                                                                              height: getVerticalSize(21),
                                                                              width: getHorizontalSize(12),
                                                                              margin: getMargin(bottom: 3)),
                                                                          CustomTextFormField(
                                                                            controller: passwordController,
                                                                            hintText: "Enter password",
                                                                            width: 300,
                                                                          )
                                                                          ])),
                                                                Align(
                                                                    alignment:
                                                                        Alignment
                                                                            .center,
                                                                    child: Padding(
                                                                        padding: getPadding(top: 17),
                                                                        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                                                                          CustomImageView(
                                                                              svgPath: ImageConstant.imgCheckbbox,
                                                                              height: getSize(20),
                                                                              width: getSize(20)),
                                                                          Padding(
                                                                              padding: getPadding(left: 8, top: 3, bottom: 1),
                                                                              child: RichText(
                                                                                  text: TextSpan(children: [
                                                                                    TextSpan(text: "I agree with ", style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(13), fontFamily: 'Karla', fontWeight: FontWeight.w400)),
                                                                                    TextSpan(text: "privacy policy", style: TextStyle(color: ColorConstant.gray900, fontSize: getFontSize(13), fontFamily: 'Karla', fontWeight: FontWeight.w700))
                                                                                  ]),
                                                                                  textAlign: TextAlign.left))
                                                                        ]))),
                                                                CustomButton(
                                                                    height:
                                                                        getVerticalSize(
                                                                            46),
                                                                    text:
                                                                        "Continue",
                                                                    margin: getMargin(
                                                                        top: 88,
                                                                        right:
                                                                            7),
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
                                                                            .PoppinsSemiBold2369,
                                                                    onTap: () {
                                                                      signUpUser(context);
                                                                    })
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

  /// Navigates to the signUpTwoScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the signUpTwoScreen.
  onTapContinue(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpTwoScreen);
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
