import 'package:flutter/material.dart';
import 'package:outline_gradient_button/outline_gradient_button.dart';
import 'package:quikart_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class AddressItemWidget extends StatelessWidget {
  const AddressItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.outline1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder7,
      ),
      child: OutlineGradientButton(
        padding: EdgeInsets.only(
          left: getHorizontalSize(
            1,
          ),
          top: getVerticalSize(
            1,
          ),
          right: getHorizontalSize(
            1,
          ),
          bottom: getVerticalSize(
            1,
          ),
        ),
        strokeWidth: getHorizontalSize(
          1,
        ),
        gradient: LinearGradient(
          begin: Alignment(
            0,
            0.24,
          ),
          end: Alignment(
            0.78,
            0.69,
          ),
          colors: [
            ColorConstant.tealA10001,
            ColorConstant.cyan30001,
          ],
        ),
        corners: Corners(
          topLeft: Radius.circular(
            8,
          ),
          topRight: Radius.circular(
            8,
          ),
          bottomLeft: Radius.circular(
            8,
          ),
          bottomRight: Radius.circular(
            8,
          ),
        ),
        child: Padding(
          padding: getPadding(
            left: 5,
            top: 13,
            right: 5,
            bottom: 13,
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                width: getHorizontalSize(
                  245,
                ),
                margin: getMargin(
                  left: 12,
                  top: 3,
                ),
                child: Text(
                  "",
                  maxLines: null,
                  textAlign: TextAlign.left,
                  style: AppStyle.txtRobotoRomanRegular16Black90001,
                ),
              ),
              Padding(
                padding: getPadding(
                  bottom: 3,
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    Text(
                      "",
                      overflow: TextOverflow.ellipsis,
                      textAlign: TextAlign.left,
                      style: AppStyle.txtPoppinsRegular12,
                    ),
                    Padding(
                      padding: getPadding(
                        top: 7,
                      ),
                      child: Text(
                        "Edit",
                        overflow: TextOverflow.ellipsis,
                        textAlign: TextAlign.left,
                        style: AppStyle.txtRobotoRomanBold12,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
