import 'package:app1/util/colorsconst.dart';
import 'package:app1/util/imageconst.dart';
import 'package:flutter/material.dart';

class UserWidget extends StatelessWidget {
  bool isStory;
  String image;
  String name;
  UserWidget(
      {super.key,
      required this.isStory,
      required this.image,
      required this.name});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 80,
      height: 106,
      child: Stack(
        children: [
          Column(
            children: [
              Container(
                margin: const EdgeInsets.only(
                    left: 5, right: 5, top: 10, bottom: 6),
                height: 70,
                width: 70,
                decoration: BoxDecoration(
                    border: Border.all(
                        color: isStory
                            ? ColorConst.colorRewardYellow
                            : Colors.transparent,
                        width: 4),
                    borderRadius: BorderRadius.circular(35)),
                child: Image.asset(
                  image,
                  width: 62,
                  height: 62,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Text(
                name,
                style: TextStyle(
                    fontFamily: 'NotoSansKR',
                    fontWeight: FontWeight.w400,
                    fontSize: 14,
                    color: ColorConst.colorLightBlack),
              )
            ],
          ),
          if (isStory)
            Positioned(
              top: 4,
              left: 4,
              child: Image.asset(
                ImageConst.reward,
                width: 16,
                height: 13,
                color: ColorConst.colorRewardYellow,
              ),
            )
        ],
      ),
    );
  }
}
