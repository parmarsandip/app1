import 'package:app1/util/colorsconst.dart';
import 'package:flutter/material.dart';

class TabWidget extends StatelessWidget {
  String tabImage;
  String tabName;
  bool isTabSelect;
  Function() onPress;

  TabWidget(
      {super.key,
      required this.tabImage,
      required this.tabName,
      required this.isTabSelect,
      required this.onPress});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          Image.asset(
            tabImage,
            width: 22,
            fit: BoxFit.fitWidth,
            color: isTabSelect ? ColorConst.colorGray : ColorConst.colorBorder,
          ),
          Text(
            tabName,
            style: TextStyle(
              color: isTabSelect
                  ? ColorConst.colorGrayText
                  : ColorConst.colorGrayMid,
              fontFamily: 'NotoSansKR',
              fontWeight: FontWeight.w400,
              fontSize: 10,
            ),
          )
        ],
      ),
    );
  }
}
