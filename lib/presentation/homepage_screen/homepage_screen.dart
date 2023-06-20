import 'package:flutter/material.dart';
import 'package:quikart_s_application1/core/app_export.dart';
import 'package:quikart_s_application1/presentation/my_orders_page/my_orders_page.dart';
import 'package:quikart_s_application1/widgets/custom_bottom_bar.dart';
import 'package:quikart_s_application1/widgets/custom_text_form_field.dart';

class HomepageScreen extends StatelessWidget {
  HomepageScreen({Key? key})
      : super(
          key: key,
        );

  TextEditingController grouptwentythreController = TextEditingController();

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
              image: AssetImage(
                ImageConstant.imgSignuptwo,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: SizedBox(
            width: double.maxFinite,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                SingleChildScrollView(
                  scrollDirection: Axis.horizontal,
                  child: IntrinsicWidth(
                    child: SizedBox(
                      height: getVerticalSize(
                        364,
                      ),
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          Align(
                            alignment: Alignment.bottomRight,
                            child: Padding(
                              padding: getPadding(
                                right: 44,
                                bottom: 34,
                              ),
                              child: Text(
                                "91 %",
                                overflow: TextOverflow.ellipsis,
                                textAlign: TextAlign.left,
                                style: AppStyle.txtRobotoRegular14,
                              ),
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRectangle31,
                            height: getVerticalSize(
                              364,
                            ),
                            width: getHorizontalSize(
                              393,
                            ),
                            alignment: Alignment.center,
                          ),
                          Align(
                            alignment: Alignment.topRight,
                            child: Container(
                              margin: getMargin(
                                left: 14,
                                top: 67,
                                bottom: 205,
                              ),
                              decoration: AppDecoration.outlineBlack9003f,
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Padding(
                                    padding: getPadding(
                                      bottom: 2,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: ColorConstant.teal300,
                                              width: getHorizontalSize(
                                                2,
                                              ),
                                            ),
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder36,
                                          ),
                                          child: Container(
                                            height: getSize(
                                              72,
                                            ),
                                            width: getSize(
                                              72,
                                            ),
                                            padding: getPadding(
                                              left: 3,
                                              top: 2,
                                              right: 3,
                                              bottom: 2,
                                            ),
                                            decoration: AppDecoration
                                                .outlineTeal300
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder36,
                                            ),
                                            child: Stack(
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgUnsplashrsphsaaroz0,
                                                  height: getSize(
                                                    65,
                                                  ),
                                                  width: getSize(
                                                    65,
                                                  ),
                                                  radius: BorderRadius.circular(
                                                    getHorizontalSize(
                                                      32,
                                                    ),
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 19,
                                            top: 5,
                                          ),
                                          child: Text(
                                            "Fitness",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoRegular9,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 17,
                                      top: 1,
                                      bottom: 2,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: ColorConstant.teal300,
                                              width: getHorizontalSize(
                                                2,
                                              ),
                                            ),
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder36,
                                          ),
                                          child: Container(
                                            height: getSize(
                                              72,
                                            ),
                                            width: getSize(
                                              72,
                                            ),
                                            padding: getPadding(
                                              all: 3,
                                            ),
                                            decoration: AppDecoration
                                                .outlineTeal300
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder36,
                                            ),
                                            child: Stack(
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgUnsplashdergnwi4sba,
                                                  height: getSize(
                                                    65,
                                                  ),
                                                  width: getSize(
                                                    65,
                                                  ),
                                                  radius: BorderRadius.circular(
                                                    getHorizontalSize(
                                                      32,
                                                    ),
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 8,
                                            top: 3,
                                          ),
                                          child: Text(
                                            "electronics",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoRegular9,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 19,
                                      top: 1,
                                      bottom: 2,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: ColorConstant.teal300,
                                              width: getHorizontalSize(
                                                2,
                                              ),
                                            ),
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder36,
                                          ),
                                          child: Container(
                                            height: getSize(
                                              72,
                                            ),
                                            width: getSize(
                                              72,
                                            ),
                                            padding: getPadding(
                                              all: 3,
                                            ),
                                            decoration: AppDecoration
                                                .outlineTeal300
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder36,
                                            ),
                                            child: Stack(
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgUnsplashpopilog9cpe,
                                                  height: getSize(
                                                    65,
                                                  ),
                                                  width: getSize(
                                                    65,
                                                  ),
                                                  radius: BorderRadius.circular(
                                                    getHorizontalSize(
                                                      32,
                                                    ),
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 17,
                                            top: 3,
                                          ),
                                          child: Text(
                                            "Fashion",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoRegular9,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 19,
                                      top: 1,
                                      bottom: 2,
                                    ),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: ColorConstant.teal300,
                                              width: getHorizontalSize(
                                                2,
                                              ),
                                            ),
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder36,
                                          ),
                                          child: Container(
                                            height: getSize(
                                              72,
                                            ),
                                            width: getSize(
                                              72,
                                            ),
                                            padding: getPadding(
                                              all: 3,
                                            ),
                                            decoration: AppDecoration
                                                .outlineTeal300
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder36,
                                            ),
                                            child: Stack(
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgUnsplashmez3pofgsk,
                                                  height: getSize(
                                                    65,
                                                  ),
                                                  width: getSize(
                                                    65,
                                                  ),
                                                  radius: BorderRadius.circular(
                                                    getHorizontalSize(
                                                      32,
                                                    ),
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            left: 18,
                                            top: 3,
                                          ),
                                          child: Text(
                                            "Mobiles",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoRegular9,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  Padding(
                                    padding: getPadding(
                                      left: 19,
                                      top: 1,
                                    ),
                                    child: Column(
                                      mainAxisAlignment:
                                          MainAxisAlignment.start,
                                      children: [
                                        Card(
                                          clipBehavior: Clip.antiAlias,
                                          elevation: 0,
                                          margin: EdgeInsets.all(0),
                                          shape: RoundedRectangleBorder(
                                            side: BorderSide(
                                              color: ColorConstant.teal300,
                                              width: getHorizontalSize(
                                                2,
                                              ),
                                            ),
                                            borderRadius: BorderRadiusStyle
                                                .circleBorder36,
                                          ),
                                          child: Container(
                                            height: getSize(
                                              72,
                                            ),
                                            width: getSize(
                                              72,
                                            ),
                                            padding: getPadding(
                                              all: 3,
                                            ),
                                            decoration: AppDecoration
                                                .outlineTeal300
                                                .copyWith(
                                              borderRadius: BorderRadiusStyle
                                                  .circleBorder36,
                                            ),
                                            child: Stack(
                                              children: [
                                                CustomImageView(
                                                  imagePath: ImageConstant
                                                      .imgUnsplasho3ymvt7wf9u,
                                                  height: getSize(
                                                    65,
                                                  ),
                                                  width: getSize(
                                                    65,
                                                  ),
                                                  radius: BorderRadius.circular(
                                                    getHorizontalSize(
                                                      32,
                                                    ),
                                                  ),
                                                  alignment: Alignment.center,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Padding(
                                          padding: getPadding(
                                            top: 3,
                                          ),
                                          child: Text(
                                            "Books",
                                            overflow: TextOverflow.ellipsis,
                                            textAlign: TextAlign.left,
                                            style: AppStyle.txtRobotoRegular9,
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                          Align(
                            alignment: Alignment.bottomCenter,
                            child: Container(
                              width: double.maxFinite,
                              margin: getMargin(
                                top: 163,
                              ),
                              padding: getPadding(
                                top: 9,
                                bottom: 9,
                              ),
                              decoration: AppDecoration.outlineBlack9003f1,
                              child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                    imagePath: ImageConstant.img1,
                                    height: getVerticalSize(
                                      181,
                                    ),
                                    width: getHorizontalSize(
                                      316,
                                    ),
                                    margin: getMargin(
                                      left: 6,
                                    ),
                                  ),
                                  CustomImageView(
                                    imagePath: ImageConstant.img2,
                                    height: getVerticalSize(
                                      181,
                                    ),
                                    width: getHorizontalSize(
                                      54,
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
                Align(
                  alignment: Alignment.center,
                  child: Container(
                    margin: getMargin(
                      left: 14,
                      top: 16,
                      right: 12,
                    ),
                    padding: getPadding(
                      left: 7,
                      top: 5,
                      right: 7,
                      bottom: 5,
                    ),
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder29,
                    ),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        CustomImageView(
                          svgPath: ImageConstant.imgSearch,
                          height: getSize(
                            44,
                          ),
                          width: getSize(
                            44,
                          ),
                          margin: getMargin(
                            top: 2,
                          ),
                        ),
                        Padding(
                          padding: getPadding(
                            left: 12,
                            top: 12,
                            bottom: 4,
                          ),
                          child: Text(
                            "search quikart",
                            overflow: TextOverflow.ellipsis,
                            textAlign: TextAlign.left,
                            style: AppStyle.txtPoppinsRegular196,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgMaterialsymbolsmic,
                          height: getSize(
                            40,
                          ),
                          width: getSize(
                            40,
                          ),
                          margin: getMargin(
                            left: 49,
                            top: 4,
                            bottom: 1,
                          ),
                        ),
                        CustomImageView(
                          svgPath: ImageConstant.imgMakiarrow,
                          height: getVerticalSize(
                            36,
                          ),
                          width: getHorizontalSize(
                            39,
                          ),
                          margin: getMargin(
                            left: 8,
                            top: 6,
                            right: 14,
                            bottom: 4,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                CustomTextFormField(
                  focusNode: FocusNode(),
                  autofocus: true,
                  controller: grouptwentythreController,
                  hintText: "400097 - Mumbai, Maharashtra ",
                  margin: getMargin(
                    left: 21,
                    top: 4,
                    right: 51,
                  ),
                  variant: TextFormFieldVariant.OutlineBlack9003f,
                  shape: TextFormFieldShape.RoundedBorder14,
                  padding: TextFormFieldPadding.PaddingT4,
                  fontStyle: TextFormFieldFontStyle.PoppinsRegular1277,
                  textInputAction: TextInputAction.done,
                  prefix: Container(
                    margin: getMargin(
                      left: 16,
                      top: 5,
                      right: 12,
                      bottom: 5,
                    ),
                    decoration: BoxDecoration(
                      color: ColorConstant.black900,
                    ),
                    child: CustomImageView(
                      svgPath: ImageConstant.imgLocation,
                    ),
                  ),
                  prefixConstraints: BoxConstraints(
                    maxHeight: getVerticalSize(
                      29,
                    ),
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    353,
                  ),
                  width: double.maxFinite,
                  margin: getMargin(
                    top: 15,
                  ),
                  child: Stack(
                    alignment: Alignment.bottomCenter,
                    children: [
                      Align(
                        alignment: Alignment.topCenter,
                        child: Container(
                          padding: getPadding(
                            left: 10,
                            top: 12,
                            right: 10,
                            bottom: 12,
                          ),
                          decoration: AppDecoration.fillBluegray100,
                          child: Column(
                            mainAxisSize: MainAxisSize.min,
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: double.maxFinite,
                                child: Container(
                                  margin: getMargin(
                                    left: 1,
                                    bottom: 119,
                                  ),
                                  padding: getPadding(
                                    all: 6,
                                  ),
                                  decoration:
                                      AppDecoration.fillGray200.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(
                                        height: getVerticalSize(
                                          108,
                                        ),
                                        width: getHorizontalSize(
                                          357,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgUnsplashpzxlmguek,
                                              height: getVerticalSize(
                                                108,
                                              ),
                                              width: getHorizontalSize(
                                                357,
                                              ),
                                              radius: BorderRadius.circular(
                                                getHorizontalSize(
                                                  7,
                                                ),
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                height: getVerticalSize(
                                                  31,
                                                ),
                                                width: getHorizontalSize(
                                                  71,
                                                ),
                                                margin: getMargin(
                                                  left: 6,
                                                  bottom: 10,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgVideocamera,
                                                      height: getVerticalSize(
                                                        31,
                                                      ),
                                                      width: getHorizontalSize(
                                                        71,
                                                      ),
                                                      radius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          10,
                                                        ),
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "9 km",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRegular18,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 4,
                                          top: 6,
                                          right: 8,
                                          bottom: 4,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "Rock Garden",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular18Bluegray900,
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 2,
                                                    top: 1,
                                                  ),
                                                  child: Text(
                                                    "Indian",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            CustomImageView(
                                              svgPath:
                                                  ImageConstant.imgTagfaces,
                                              height: getVerticalSize(
                                                21,
                                              ),
                                              width: getHorizontalSize(
                                                20,
                                              ),
                                              margin: getMargin(
                                                top: 8,
                                                bottom: 8,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 5,
                                                top: 9,
                                                bottom: 11,
                                              ),
                                              child: Text(
                                                "91 %",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style: AppStyle
                                                    .txtRobotoRegular14Teal300,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Align(
                        alignment: Alignment.bottomCenter,
                        child: SizedBox(
                          height: getVerticalSize(
                            167,
                          ),
                          width: getHorizontalSize(
                            373,
                          ),
                          child: Stack(
                            alignment: Alignment.topLeft,
                            children: [
                              Align(
                                alignment: Alignment.center,
                                child: Container(
                                  padding: getPadding(
                                    left: 6,
                                    top: 7,
                                    right: 6,
                                    bottom: 7,
                                  ),
                                  decoration:
                                      AppDecoration.fillGray200.copyWith(
                                    borderRadius:
                                        BorderRadiusStyle.roundedBorder10,
                                  ),
                                  child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    children: [
                                      SizedBox(
                                        height: getVerticalSize(
                                          103,
                                        ),
                                        width: getHorizontalSize(
                                          358,
                                        ),
                                        child: Stack(
                                          alignment: Alignment.bottomLeft,
                                          children: [
                                            CustomImageView(
                                              imagePath: ImageConstant
                                                  .imgUnsplashpbpgthbjzlw,
                                              height: getVerticalSize(
                                                103,
                                              ),
                                              width: getHorizontalSize(
                                                358,
                                              ),
                                              radius: BorderRadius.circular(
                                                getHorizontalSize(
                                                  5,
                                                ),
                                              ),
                                              alignment: Alignment.center,
                                            ),
                                            Align(
                                              alignment: Alignment.bottomLeft,
                                              child: Container(
                                                height: getVerticalSize(
                                                  31,
                                                ),
                                                width: getHorizontalSize(
                                                  71,
                                                ),
                                                margin: getMargin(
                                                  left: 6,
                                                  bottom: 8,
                                                ),
                                                child: Stack(
                                                  alignment: Alignment.center,
                                                  children: [
                                                    CustomImageView(
                                                      svgPath: ImageConstant
                                                          .imgVideocamera,
                                                      height: getVerticalSize(
                                                        31,
                                                      ),
                                                      width: getHorizontalSize(
                                                        71,
                                                      ),
                                                      radius:
                                                          BorderRadius.circular(
                                                        getHorizontalSize(
                                                          10,
                                                        ),
                                                      ),
                                                      alignment:
                                                          Alignment.center,
                                                    ),
                                                    Align(
                                                      alignment:
                                                          Alignment.center,
                                                      child: Text(
                                                        "6 km",
                                                        overflow: TextOverflow
                                                            .ellipsis,
                                                        textAlign:
                                                            TextAlign.left,
                                                        style: AppStyle
                                                            .txtRobotoRegular18,
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                      Padding(
                                        padding: getPadding(
                                          left: 3,
                                          top: 5,
                                          right: 7,
                                        ),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.center,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.start,
                                              mainAxisAlignment:
                                                  MainAxisAlignment.start,
                                              children: [
                                                Text(
                                                  "The Waves",
                                                  overflow:
                                                      TextOverflow.ellipsis,
                                                  textAlign: TextAlign.left,
                                                  style: AppStyle
                                                      .txtRobotoRegular18Bluegray900,
                                                ),
                                                Padding(
                                                  padding: getPadding(
                                                    left: 2,
                                                    top: 4,
                                                  ),
                                                  child: Text(
                                                    "Indian",
                                                    overflow:
                                                        TextOverflow.ellipsis,
                                                    textAlign: TextAlign.left,
                                                    style: AppStyle
                                                        .txtRobotoRegular12,
                                                  ),
                                                ),
                                              ],
                                            ),
                                            Spacer(),
                                            CustomImageView(
                                              svgPath: ImageConstant
                                                  .imgTagfacesYellow800,
                                              height: getSize(
                                                20,
                                              ),
                                              width: getSize(
                                                20,
                                              ),
                                              margin: getMargin(
                                                top: 11,
                                                bottom: 9,
                                              ),
                                            ),
                                            Padding(
                                              padding: getPadding(
                                                left: 4,
                                                top: 13,
                                                bottom: 11,
                                              ),
                                              child: Text(
                                                "97 %",
                                                overflow: TextOverflow.ellipsis,
                                                textAlign: TextAlign.left,
                                                style:
                                                    AppStyle.txtRobotoRegular14,
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              CustomImageView(
                                svgPath: ImageConstant.imgPermidentity,
                                height: getSize(
                                  24,
                                ),
                                width: getSize(
                                  24,
                                ),
                                alignment: Alignment.topLeft,
                                margin: getMargin(
                                  left: 72,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
        bottomNavigationBar: CustomBottomBar(
          onChanged: (BottomBarEnum type) {
            Navigator.pushNamed(
                navigatorKey.currentContext!, getCurrentRoute(type));
          },
        ),
      ),
    );
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
}
