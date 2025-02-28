import 'package:app1/util/colorsconst.dart';
import 'package:app1/util/imageconst.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_stars/flutter_rating_stars.dart';

class UserReviewWidget extends StatelessWidget {
  const UserReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 38,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            margin: const EdgeInsets.only(top: 4),
            height: 34,
            width: 34,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.all(Radius.circular(17)),
            ),
            child: Image.asset(
              ImageConst.e1,
              width: 34,
              fit: BoxFit.fitWidth,
            ),
          ),
          Expanded(
              child: Container(
            padding: const EdgeInsets.only(left: 8),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Name01',
                  style: TextStyle(
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w500,
                      fontSize: 14,
                      color: Colors.black),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    RatingStars(
                      value: 3.5,
                      starBuilder: (index, color) => Image.asset(
                        ImageConst.star,
                        width: 11,
                        height: 11,
                        fit: BoxFit.fitHeight,
                        color: color,
                      ),
                      starCount: 5,
                      starSize: 11,
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
                      '2022.12.09',
                      style: TextStyle(
                          fontFamily: 'NotoSansKR',
                          fontWeight: FontWeight.w400,
                          fontSize: 10,
                          color: ColorConst.colorDemiGray),
                    ),
                  ],
                ),
              ],
            ),
          )),
          InkWell(
            onTap: () {
              ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(
                  content: Text(
                    'Book marked clicked',
                    style: TextStyle(
                        fontFamily: 'NotoSansKR',
                        fontWeight: FontWeight.w400,
                        fontSize: 15,
                        color: ColorConst.colorGrayBackGround),
                  ),
                  duration: const Duration(milliseconds: 3000),
                  backgroundColor: ColorConst.colorRewardYellow,
                ),
              );
            },
            child: SizedBox(
              height: 30,
              width: 14,
              child: Image.asset(
                ImageConst.bookmark,
                width: 14,
                fit: BoxFit.fitWidth,
              ),
            ),
          )
        ],
      ),
    );
  }
}
