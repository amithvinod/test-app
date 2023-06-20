import 'package:flutter/material.dart';
import 'package:quikart_s_application1/core/app_export.dart';
import 'package:quikart_s_application1/widgets/app_bar/custom_app_bar.dart';
import 'package:quikart_s_application1/widgets/custom_button.dart';

class SearchScreen extends StatelessWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            extendBody: true,
            extendBodyBehindAppBar: true,
            backgroundColor: ColorConstant.whiteA700,
            appBar: CustomAppBar(
                height: getVerticalSize(111),
                leadingWidth: 51,
                leading: CustomImageView(
                    svgPath: ImageConstant.imgArrowleft,
                    height: getVerticalSize(26),
                    width: getHorizontalSize(36),
                    margin: getMargin(left: 15, top: 14, bottom: 15),
                    onTap: () {
                      onTapImgArrowleft(context);
                    }),
                title: Container(
                    height: getVerticalSize(47),
                    width: getHorizontalSize(313),
                    margin: getMargin(left: 17),
                    child: Stack(children: [
                      CustomImageView(
                          svgPath: ImageConstant.imgRectangle1,
                          height: getVerticalSize(47),
                          width: getHorizontalSize(313),
                          radius: BorderRadius.circular(getHorizontalSize(15)),
                          alignment: Alignment.center),
                      Padding(
                          padding:
                              getPadding(left: 14, top: 5, right: 4, bottom: 6),
                          child: Row(children: [
                            Padding(
                                padding: getPadding(top: 8, bottom: 3),
                                child: Text("Shoe",
                                    overflow: TextOverflow.ellipsis,
                                    textAlign: TextAlign.left,
                                    style: AppStyle.txtPoppinsLight1577)),
                            CustomImageView(
                                svgPath: ImageConstant.imgArrowrightBlack900,
                                height: getSize(36),
                                width: getSize(36),
                                margin: getMargin(left: 220))
                          ]))
                    ])),
                actions: [
                  CustomImageView(
                      svgPath: ImageConstant.imgArrowrightBlack900,
                      height: getSize(36),
                      width: getSize(36),
                      margin: getMargin(left: 220))
                ],
                styleType: Style.bgStyle),
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
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          CustomButton(
                              height: getVerticalSize(21),
                              width: getHorizontalSize(228),
                              text: "400097 - Mumbai, Maharashtra ",
                              margin: getMargin(left: 72),
                              variant: ButtonVariant.OutlineBlack9003f,
                              padding: ButtonPadding.PaddingT1,
                              fontStyle: ButtonFontStyle.PoppinsRegular1177,
                              prefixWidget: Container(
                                  margin: getMargin(right: 11),
                                  decoration: BoxDecoration(
                                      color: ColorConstant.black900),
                                  child: CustomImageView(
                                      svgPath: ImageConstant.imgLocation))),
                          Container(
                              height: getVerticalSize(469),
                              width: double.maxFinite,
                              margin: getMargin(top: 17),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            padding:
                                                getPadding(top: 41, bottom: 41),
                                            decoration:
                                                AppDecoration.fillWhiteA700,
                                            child: Column(
                                                mainAxisSize: MainAxisSize.min,
                                                mainAxisAlignment:
                                                    MainAxisAlignment.start,
                                                children: [
                                                  Container(
                                                      width: double.maxFinite,
                                                      padding: getPadding(
                                                          left: 5,
                                                          top: 11,
                                                          right: 5,
                                                          bottom: 11),
                                                      decoration: AppDecoration
                                                          .outlineBlack900b2,
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgSearchBlack900,
                                                            height: getSize(20),
                                                            width: getSize(20)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 1),
                                                            child: Text(
                                                                "Shoes for women",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanLight1467))
                                                      ])),
                                                  SizedBox(
                                                      height:
                                                          getVerticalSize(42),
                                                      width: double.maxFinite,
                                                      child: Stack(
                                                          alignment:
                                                              Alignment.center,
                                                          children: [
                                                            CustomImageView(
                                                                svgPath:
                                                                    ImageConstant
                                                                        .imgSearchBlack900,
                                                                height:
                                                                    getSize(20),
                                                                width:
                                                                    getSize(20),
                                                                alignment: Alignment
                                                                    .centerLeft,
                                                                margin:
                                                                    getMargin(
                                                                        left:
                                                                            5)),
                                                            Align(
                                                                alignment:
                                                                    Alignment
                                                                        .center,
                                                                child:
                                                                    Container(
                                                                        width: double
                                                                            .maxFinite,
                                                                        padding: getPadding(
                                                                            left:
                                                                                5,
                                                                            top:
                                                                                10,
                                                                            right:
                                                                                5,
                                                                            bottom:
                                                                                10),
                                                                        decoration:
                                                                            AppDecoration
                                                                                .outlineBlack900b2,
                                                                        child: Row(
                                                                            children: [
                                                                              CustomImageView(svgPath: ImageConstant.imgSearchBlack900, height: getSize(20), width: getSize(20)),
                                                                              Padding(padding: getPadding(left: 16, top: 3), child: Text("Shoes for boys", overflow: TextOverflow.ellipsis, textAlign: TextAlign.left, style: AppStyle.txtRobotoRomanLight1467))
                                                                            ])))
                                                          ])),
                                                  Container(
                                                      width: double.maxFinite,
                                                      padding: getPadding(
                                                          left: 5,
                                                          top: 11,
                                                          right: 5,
                                                          bottom: 11),
                                                      decoration: AppDecoration
                                                          .outlineBlack900b2,
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgSearchBlack900,
                                                            height: getSize(20),
                                                            width: getSize(20)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 1),
                                                            child: Text(
                                                                "Shoe rack",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanLight1467))
                                                      ])),
                                                  Container(
                                                      width: double.maxFinite,
                                                      margin: getMargin(
                                                          bottom: 218),
                                                      padding: getPadding(
                                                          left: 5,
                                                          top: 10,
                                                          right: 5,
                                                          bottom: 10),
                                                      decoration: AppDecoration
                                                          .outlineBlack900b2,
                                                      child: Row(children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgSearchBlack900,
                                                            height: getSize(20),
                                                            width: getSize(20)),
                                                        Padding(
                                                            padding: getPadding(
                                                                left: 16,
                                                                top: 3),
                                                            child: Text(
                                                                "Shoe polish",
                                                                overflow:
                                                                    TextOverflow
                                                                        .ellipsis,
                                                                textAlign:
                                                                    TextAlign
                                                                        .left,
                                                                style: AppStyle
                                                                    .txtRobotoRomanLight1467))
                                                      ]))
                                                ]))),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Container(
                                            width: double.maxFinite,
                                            margin: getMargin(bottom: 427),
                                            padding: getPadding(
                                                left: 5,
                                                top: 11,
                                                right: 5,
                                                bottom: 11),
                                            decoration:
                                                AppDecoration.outlineBlack900b2,
                                            child: Row(children: [
                                              CustomImageView(
                                                  svgPath: ImageConstant
                                                      .imgSearchBlack900,
                                                  height: getSize(20),
                                                  width: getSize(20)),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 16, top: 1),
                                                  child: Text("Shoes for men",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanLight1467))
                                            ])))
                                  ])),
                          CustomImageView(
                              imagePath: ImageConstant.imgImage1,
                              height: getVerticalSize(234),
                              width: getHorizontalSize(393))
                        ])))));
  }

  /// Navigates back to the previous screen.
  ///
  /// This function takes a [BuildContext] object as a parameter, which is used
  /// to navigate back to the previous screen.
  onTapImgArrowleft(BuildContext context) {
    Navigator.pop(context);
  }
}
