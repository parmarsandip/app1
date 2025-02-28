import 'package:app1/util/colorsconst.dart';
import 'package:app1/util/imageconst.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating/flutter_rating.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class ProductWidget extends StatelessWidget {
  const ProductWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 106,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            height: 104,
            width: 104,
            decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(4)),
                border: Border.all(color: ColorConst.colorImageBorder)),
            child: Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 21),
                  child: Center(
                    child: Image.asset(
                      ImageConst.l1,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                ),
              ],
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                RichText(
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: 'AMD 라이젠 5 ',
                        style: TextStyle(
                            fontFamily: 'NotoSansKR',
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                      TextSpan(
                        text: '5600X 버미어 정품 멀티팩',
                        style: TextStyle(
                            fontFamily: 'NotoSansKR',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      RatingStars(
                        value: 3.5,
                        starBuilder: (index, color) => Image.asset(
                          ImageConst.star,
                          width: 21,
                          height: 21,
                          fit: BoxFit.fitHeight,
                          color: color,
                        ),
                        starCount: 5,
                        starSize: 21,
                        maxValue: 5,
                        starSpacing: 2,
                        maxValueVisibility: true,
                        valueLabelVisibility: false,
                        animationDuration: Duration(milliseconds: 1000),
                        starOffColor: ColorConst.colorLiteGray,
                        starColor: ColorConst.colorRewardYellow,
                      ),
                      SizedBox(
                        width: 8,
                      ),
                      Text(
                        '4.07',
                        maxLines: 1,
                        style: TextStyle(
                            fontFamily: 'NotoSansKR',
                            fontWeight: FontWeight.w500,
                            fontSize: 18,
                            color: Colors.black),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ))
        ],
      ),
    );
  }
}
