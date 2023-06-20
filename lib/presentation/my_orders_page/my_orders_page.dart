import '../my_orders_page/widgets/my_orders_item_widget.dart';
import 'package:flutter/material.dart';
import 'package:quikart_s_application1/core/app_export.dart';

class MyOrdersPage extends StatelessWidget {
  const MyOrdersPage({Key? key}) : super(key: key);

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
                        image: AssetImage(ImageConstant.imgGroup89),
                        fit: BoxFit.cover)),
                child: Container(
                    width: double.maxFinite,
                    decoration: AppDecoration.fillWhiteA700.copyWith(
                        image: DecorationImage(
                            image: AssetImage(ImageConstant.imgGroup89),
                            fit: BoxFit.cover)),
                    child: Column(
                        mainAxisSize: MainAxisSize.min,
                        mainAxisAlignment: MainAxisAlignment.start,
                        children: [
                          Container(
                              padding: getPadding(
                                  left: 29, top: 49, right: 29, bottom: 49),
                              child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  mainAxisAlignment: MainAxisAlignment.start,
                                  children: [
                                    Padding(
                                        padding: getPadding(left: 4, top: 44),
                                        child: Row(
                                            crossAxisAlignment:
                                                CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                  height: getVerticalSize(26),
                                                  width: getHorizontalSize(36),
                                                  margin: getMargin(bottom: 7),
                                                  child: Stack(
                                                      alignment:
                                                          Alignment.center,
                                                      children: [
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowleft,
                                                            height:
                                                                getVerticalSize(
                                                                    26),
                                                            width:
                                                                getHorizontalSize(
                                                                    36),
                                                            alignment: Alignment
                                                                .center,
                                                            onTap: () {
                                                              onTapImgArrowleft(
                                                                  context);
                                                            }),
                                                        CustomImageView(
                                                            svgPath: ImageConstant
                                                                .imgArrowleft,
                                                            height:
                                                                getVerticalSize(
                                                                    26),
                                                            width:
                                                                getHorizontalSize(
                                                                    36),
                                                            alignment: Alignment
                                                                .center)
                                                      ])),
                                              Padding(
                                                  padding: getPadding(
                                                      left: 71, top: 5),
                                                  child: Text("My Orders",
                                                      overflow:
                                                          TextOverflow.ellipsis,
                                                      textAlign: TextAlign.left,
                                                      style: AppStyle
                                                          .txtRobotoRomanBold24))
                                            ])),
                                    Expanded(
                                        child: Padding(
                                            padding: getPadding(top: 93),
                                            child: ListView.separated(
                                                physics:
                                                    BouncingScrollPhysics(),
                                                shrinkWrap: true,
                                                separatorBuilder:
                                                    (context, index) {
                                                  return SizedBox(
                                                      height:
                                                          getVerticalSize(24));
                                                },
                                                itemCount: 3,
                                                itemBuilder: (context, index) {
                                                  return MyOrdersItemWidget();
                                                })))
                                  ]))
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
