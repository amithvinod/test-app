import 'package:flutter/material.dart';
import 'package:quikart_s_application1/core/app_export.dart';

// ignore: must_be_immutable
class CustomButton extends StatelessWidget {
  CustomButton(
      {this.shape,
      this.padding,
      this.variant,
      this.fontStyle,
      this.alignment,
      this.margin,
      this.onTap,
      this.width,
      this.height,
      this.text,
      this.prefixWidget,
      this.suffixWidget});

  ButtonShape? shape;

  ButtonPadding? padding;

  ButtonVariant? variant;

  ButtonFontStyle? fontStyle;

  Alignment? alignment;

  EdgeInsetsGeometry? margin;

  VoidCallback? onTap;

  double? width;

  double? height;

  String? text;

  Widget? prefixWidget;

  Widget? suffixWidget;

  @override
  Widget build(BuildContext context) {
    return alignment != null
        ? Align(
            alignment: alignment!,
            child: _buildButtonWidget(),
          )
        : _buildButtonWidget();
  }

  _buildButtonWidget() {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: TextButton(
        onPressed: onTap,
        style: _buildTextButtonStyle(),
        child: _buildButtonWithOrWithoutIcon(),
      ),
    );
  }

  _buildButtonWithOrWithoutIcon() {
    if (prefixWidget != null || suffixWidget != null) {
      return Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          prefixWidget ?? SizedBox(),
          Text(
            text ?? "",
            textAlign: TextAlign.center,
            style: _setFontStyle(),
          ),
          suffixWidget ?? SizedBox(),
        ],
      );
    } else {
      return Text(
        text ?? "",
        textAlign: TextAlign.center,
        style: _setFontStyle(),
      );
    }
  }

  _buildTextButtonStyle() {
    return TextButton.styleFrom(
      fixedSize: Size(
        width ?? double.maxFinite,
        height ?? getVerticalSize(40),
      ),
      padding: _setPadding(),
      backgroundColor: _setColor(),
      side: _setTextButtonBorder(),
      shadowColor: _setTextButtonShadowColor(),
      shape: RoundedRectangleBorder(
        borderRadius: _setBorderRadius(),
      ),
    );
  }

  _setPadding() {
    switch (padding) {
      case ButtonPadding.PaddingAll10:
        return getPadding(
          all: 10,
        );
      case ButtonPadding.PaddingAll5:
        return getPadding(
          all: 5,
        );
      case ButtonPadding.PaddingT1:
        return getPadding(
          top: 1,
          right: 1,
          bottom: 1,
        );
      case ButtonPadding.PaddingAll17:
        return getPadding(
          all: 17,
        );
      default:
        return getPadding(
          top: 18,
          right: 18,
          bottom: 18,
        );
    }
  }

  _setColor() {
    switch (variant) {
      case ButtonVariant.OutlineWhiteA700_1:
        return ColorConstant.cyan200;
      case ButtonVariant.OutlineWhiteA700_2:
        return ColorConstant.teal3007f;
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.teal300;
      case ButtonVariant.OutlineWhiteA700:
        return null;
      default:
        return ColorConstant.whiteA700;
    }
  }

  _setTextButtonBorder() {
    switch (variant) {
      case ButtonVariant.OutlineWhiteA700:
        return BorderSide(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            1.00,
          ),
        );
      case ButtonVariant.OutlineWhiteA700_1:
        return BorderSide(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineWhiteA700_2:
        return BorderSide(
          color: ColorConstant.whiteA700,
          width: getHorizontalSize(
            2.00,
          ),
        );
      case ButtonVariant.OutlineBlack9003f:
        return null;
      default:
        return BorderSide(
          color: ColorConstant.teal100,
          width: getHorizontalSize(
            1.00,
          ),
        );
    }
  }

  _setTextButtonShadowColor() {
    switch (variant) {
      case ButtonVariant.OutlineBlack9003f:
        return ColorConstant.black9003f;
      case ButtonVariant.OutlineTeal100:
      case ButtonVariant.OutlineWhiteA700:
      case ButtonVariant.OutlineWhiteA700_1:
      case ButtonVariant.OutlineWhiteA700_2:
        return null;
      default:
        return null;
    }
  }

  _setBorderRadius() {
    switch (shape) {
      case ButtonShape.CircleBorder29:
        return BorderRadius.circular(
          getHorizontalSize(
            29.00,
          ),
        );
      case ButtonShape.CircleBorder23:
        return BorderRadius.circular(
          getHorizontalSize(
            23.00,
          ),
        );
      case ButtonShape.Square:
        return BorderRadius.circular(0);
      default:
        return BorderRadius.circular(
          getHorizontalSize(
            10.00,
          ),
        );
    }
  }

  _setFontStyle() {
    switch (fontStyle) {
      case ButtonFontStyle.PoppinsRegular2469:
        return TextStyle(
          color: ColorConstant.black90087,
          fontSize: getFontSize(
            24.69,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.PoppinsSemiBold1669:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            16.69,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.PoppinsSemiBold2369:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            23.69,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w600,
        );
      case ButtonFontStyle.PoppinsRegular1177:
        return TextStyle(
          color: ColorConstant.whiteA700,
          fontSize: getFontSize(
            11.77,
          ),
          fontFamily: 'Poppins',
          fontWeight: FontWeight.w400,
        );
      case ButtonFontStyle.RobotoRomanRegular16:
        return TextStyle(
          color: ColorConstant.black90082,
          fontSize: getFontSize(
            16,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w400,
        );
      default:
        return TextStyle(
          color: ColorConstant.black900,
          fontSize: getFontSize(
            15,
          ),
          fontFamily: 'Roboto',
          fontWeight: FontWeight.w500,
        );
    }
  }
}

enum ButtonShape {
  Square,
  RoundedBorder10,
  CircleBorder29,
  CircleBorder23,
}

enum ButtonPadding {
  PaddingT18,
  PaddingAll10,
  PaddingAll5,
  PaddingT1,
  PaddingAll17,
}

enum ButtonVariant {
  OutlineTeal100,
  OutlineWhiteA700,
  OutlineWhiteA700_1,
  OutlineWhiteA700_2,
  OutlineBlack9003f,
}

enum ButtonFontStyle {
  RobotoRomanMedium15,
  PoppinsRegular2469,
  PoppinsSemiBold1669,
  PoppinsSemiBold2369,
  PoppinsRegular1177,
  RobotoRomanRegular16,
}
