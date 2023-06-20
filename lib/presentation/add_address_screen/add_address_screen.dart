import 'package:flutter/material.dart';
import 'package:quikart_s_application1/core/app_export.dart';
import 'package:quikart_s_application1/presentation/my_orders_page/my_orders_page.dart';
import 'package:quikart_s_application1/widgets/custom_bottom_bar.dart';
import 'package:quikart_s_application1/widgets/custom_button.dart';
import 'package:quikart_s_application1/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class AddAddressScreen extends StatelessWidget {
  AddAddressScreen({Key? key}) : super(key: key);

  TextEditingController locationController = TextEditingController();

  TextEditingController addressController = TextEditingController();

  TextEditingController addressoneController = TextEditingController();

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.whiteA700,
            resizeToAvoidBottomInset: false,
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
                                    padding: getPadding(left: 58),
                                    child: Text("Add Address",
                                        overflow: TextOverflow.ellipsis,
                                        textAlign: TextAlign.left,
                                        style: AppStyle
                                            .txtRobotoRomanBold24Black900cc))
                              ])),
                          Expanded(
                              child: Container(
                                  margin: getMargin(top: 26),
                                  padding: getPadding(
                                      left: 22, top: 33, right: 22, bottom: 33),
                                  decoration: AppDecoration.fillWhiteA700,
                                  child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Padding(
                                            padding: getPadding(right: 1),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                children: [
                                                  Expanded(
                                                      child: CustomButton(
                                                          height:
                                                              getVerticalSize(
                                                                  54),
                                                          text: "Pin code",
                                                          margin: getMargin(
                                                              right: 8),
                                                          padding: ButtonPadding
                                                              .PaddingAll17,
                                                          fontStyle: ButtonFontStyle
                                                              .RobotoRomanRegular16)),
                                                  Expanded(
                                                      child: CustomTextFormField(
                                                          focusNode:
                                                              FocusNode(),
                                                          autofocus: true,
                                                          controller:
                                                              locationController,
                                                          hintText:
                                                              "Use Location",
                                                          margin: getMargin(
                                                              left: 8),
                                                          variant:
                                                              TextFormFieldVariant
                                                                  .OutlineTeal100,
                                                          padding:
                                                              TextFormFieldPadding
                                                                  .PaddingT17,
                                                          fontStyle:
                                                              TextFormFieldFontStyle
                                                                  .RobotoRomanRegular16,
                                                          prefix: Container(
                                                              margin: getMargin(
                                                                  left: 5,
                                                                  top: 13,
                                                                  right: 7,
                                                                  bottom: 13),
                                                              child: CustomImageView(
                                                                  svgPath:
                                                                      ImageConstant
                                                                          .imgMdilocation)),
                                                          prefixConstraints:
                                                              BoxConstraints(
                                                                  maxHeight:
                                                                      getVerticalSize(
                                                                          54))))
                                                ])),
                                        Padding(
                                            padding:
                                                getPadding(top: 9, right: 1),
                                            child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment
                                                        .spaceBetween,
                                                children: [
                                                  Container(
                                                      width: getHorizontalSize(
                                                          166),
                                                      padding: getPadding(
                                                          left: 30,
                                                          top: 16,
                                                          right: 58,
                                                          bottom: 16),
                                                      decoration: AppDecoration
                                                          .txtOutlineTeal100
                                                          .copyWith(
                                                              borderRadius:
                                                                  BorderRadiusStyle
                                                                      .txtRoundedBorder8),
                                                      child: Text("State",
                                                          overflow: TextOverflow
                                                              .ellipsis,
                                                          textAlign:
                                                              TextAlign.left,
                                                          style: AppStyle
                                                              .txtRobotoRomanRegular16Black90082)),
                                                  CustomButton(
                                                      height:
                                                          getVerticalSize(54),
                                                      width: getHorizontalSize(
                                                          166),
                                                      text: "City",
                                                      padding: ButtonPadding
                                                          .PaddingAll17,
                                                      fontStyle: ButtonFontStyle
                                                          .RobotoRomanRegular16)
                                                ])),
                                        CustomTextFormField(
                                            focusNode: FocusNode(),
                                            autofocus: true,
                                            controller: addressController,
                                            hintText: "Address line 1",
                                            margin: getMargin(top: 9)),
                                        CustomTextFormField(
                                            focusNode: FocusNode(),
                                            autofocus: true,
                                            controller: addressoneController,
                                            hintText: "Address line 2",
                                            margin: getMargin(top: 9),
                                            textInputAction:
                                                TextInputAction.done),
                                        Spacer(),
                                        Container(
                                            width: getHorizontalSize(342),
                                            margin: getMargin(bottom: 22),
                                            padding: getPadding(
                                                left: 30,
                                                top: 17,
                                                right: 118,
                                                bottom: 17),
                                            decoration: AppDecoration
                                                .txtOutlineRed300
                                                .copyWith(
                                                    borderRadius:
                                                        BorderRadiusStyle
                                                            .txtRoundedBorder8),
                                            child: Text("Save Adress",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRomanRegular16Red80001))
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
