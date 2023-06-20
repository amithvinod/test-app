import 'package:flutter/material.dart';
import 'package:quikart_s_application1/core/app_export.dart';
import 'package:quikart_s_application1/widgets/custom_button.dart';

class SignUpTwoScreen extends StatelessWidget {
  const SignUpTwoScreen({Key? key}) : super(key: key);

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
                child: Container(
                    width: double.maxFinite,
                    padding: getPadding(left: 25, top: 94, right: 25),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomImageView(
                              svgPath: ImageConstant.imgEpback,
                              height: getSize(49),
                              width: getSize(49),
                              onTap: () {
                                onTapImgEpback(context);
                              }),
                          Padding(
                              padding: getPadding(left: 6, top: 65),
                              child: Text("Enter the OTP ",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold3015)),
                          CustomButton(
                              height: getVerticalSize(58),
                              text: "4 digit OTP",
                              margin: getMargin(top: 13, right: 19),
                              variant: ButtonVariant.OutlineWhiteA700,
                              shape: ButtonShape.CircleBorder29,
                              padding: ButtonPadding.PaddingAll10,
                              fontStyle: ButtonFontStyle.PoppinsRegular2469),
                          Padding(
                              padding: getPadding(left: 9, top: 11),
                              child: RichText(
                                  text: TextSpan(children: [
                                    TextSpan(
                                        text: "OTP sent to number ",
                                        style: TextStyle(
                                            color: ColorConstant.gray900,
                                            fontSize: getFontSize(13),
                                            fontFamily: 'Karla',
                                            fontWeight: FontWeight.w700)),
                                    TextSpan(
                                        text: "8097014594",
                                        style: TextStyle(
                                            color: ColorConstant.red800,
                                            fontSize: getFontSize(13),
                                            fontFamily: 'Karla',
                                            fontWeight: FontWeight.w700))
                                  ]),
                                  textAlign: TextAlign.left)),
                          Container(
                              width: getHorizontalSize(336),
                              margin: getMargin(top: 57, bottom: 5),
                              padding: getPadding(
                                  left: 30, top: 1, right: 78, bottom: 1),
                              decoration: AppDecoration.txtOutlineWhiteA700
                                  .copyWith(
                                      borderRadius:
                                          BorderRadiusStyle.txtCircleBorder23),
                              child: Text("Start Shopping",
                                  overflow: TextOverflow.ellipsis,
                                  textAlign: TextAlign.left,
                                  style: AppStyle.txtPoppinsSemiBold2369))
                        ])))));
  }

  /// Navigates to the signUpOneScreen when the action is triggered.
  ///
  /// The [BuildContext] parameter is used to build the navigation stack.
  /// When the action is triggered, this function uses the `Navigator` widget
  /// to push the named route for the signUpOneScreen.
  onTapImgEpback(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.signUpOneScreen);
  }
}
