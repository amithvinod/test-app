import 'package:flutter/material.dart';
import 'package:quikart_s_application1/core/app_export.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgHome,
      type: BottomBarEnum.Home,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFluentperson48regular,
      type: BottomBarEnum.Fluentperson48regular,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgShoppingcart,
      type: BottomBarEnum.Shoppingcart,
      isPng: true,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgFebar,
      type: BottomBarEnum.Febar,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: ColorConstant.whiteA700,
        border: Border.all(
          color: ColorConstant.black900,
          width: getHorizontalSize(
            1,
          ),
        ),
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: CustomImageView(
              svgPath: bottomMenuList[index].isPng == true
                  ? null
                  : bottomMenuList[index].icon,
              imagePath: bottomMenuList[index].isPng == true
                  ? bottomMenuList[index].icon
                  : null,
              height: getVerticalSize(
                34,
              ),
              width: getHorizontalSize(
                35,
              ),
              color: ColorConstant.black900,
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                CustomImageView(
                  svgPath: bottomMenuList[index].isPng == true
                      ? null
                      : bottomMenuList[index].icon,
                  imagePath: bottomMenuList[index].isPng == true
                      ? bottomMenuList[index].icon
                      : null,
                  height: getVerticalSize(
                    33,
                  ),
                  width: getHorizontalSize(
                    35,
                  ),
                ),
                Container(
                  height: getVerticalSize(
                    4,
                  ),
                  width: getHorizontalSize(
                    35,
                  ),
                  margin: getMargin(
                    top: 1,
                  ),
                  decoration: BoxDecoration(
                    color: ColorConstant.teal300,
                    borderRadius: BorderRadius.circular(
                      getHorizontalSize(
                        2,
                      ),
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Home,
  Fluentperson48regular,
  Shoppingcart,
  Febar,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.type,
    this.isPng = false,
  });

  String icon;

  BottomBarEnum type;

  bool isPng;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
