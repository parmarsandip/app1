import 'package:app1/bottomtab/tab_widget.dart';
import 'package:app1/util/colorsconst.dart';
import 'package:app1/util/imageconst.dart';
import 'package:flutter/material.dart';

class BottomTabWidget extends StatefulWidget {
  Function(int) onPress;

  BottomTabWidget({super.key, required this.onPress});

  @override
  State<BottomTabWidget> createState() => _BottomTabWidgetState();
}

class _BottomTabWidgetState extends State<BottomTabWidget> {
  int index = 0;

  void onPressHandler() {}

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.only(
              topLeft: Radius.circular(10), topRight: Radius.circular(10)),
          border: Border(top: BorderSide(color: ColorConst.colorBorder)),
          boxShadow: [
            BoxShadow(
                color: Colors.black.withAlpha(25),
                blurRadius: 5,
                offset: Offset(0, -5))
          ]),
      padding: const EdgeInsets.only(left: 24, right: 24, top: 6, bottom: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Expanded(
              child: TabWidget(
            tabImage: ImageConst.home,
            tabName: '홈',
            isTabSelect: (index == 0) ? true : false,
            onPress: () {
              setState(() {
                index = 0;
              });
              widget.onPress(0);
            },
          )),
          Expanded(
              child: TabWidget(
            tabImage: ImageConst.search,
            tabName: '카테고리',
            isTabSelect: (index == 1) ? true : false,
            onPress: () {
              setState(() {
                index = 1;
              });
              widget.onPress(1);
            },
          )),
          Expanded(
              child: TabWidget(
            tabImage: ImageConst.community,
            tabName: '커뮤니티',
            isTabSelect: (index == 2) ? true : false,
            onPress: () {
              setState(() {
                index = 2;
              });
              widget.onPress(2);
            },
          )),
          Expanded(
              child: TabWidget(
            tabImage: ImageConst.mypage,
            tabName: '마이페이지',
            isTabSelect: (index == 3) ? true : false,
            onPress: () {
              setState(() {
                index = 3;
              });
              widget.onPress(3);
            },
          )),
        ],
      ),
    );
  }
}
