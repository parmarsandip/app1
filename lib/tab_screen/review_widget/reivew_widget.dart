import 'package:app1/util/colorsconst.dart';
import 'package:app1/util/imageconst.dart';
import 'package:flutter/material.dart';

class ReviewWidget extends StatelessWidget {
  const ReviewWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 8),
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
                Positioned(
                  top: 6,
                  left: 6,
                  child: Stack(
                    children: [
                      Image.asset(
                        ImageConst.reward,
                        width: 19,
                        height: 15,
                        color: ColorConst.colorRewardYellow,
                      ),
                      Positioned(
                        left: 0,
                        right: 0,
                        top: 2,
                        bottom: 0,
                        child: Center(
                          child: Text(
                            '1',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                                fontFamily: 'Roboto',
                                fontWeight: FontWeight.w700,
                                fontSize: 7,
                                color: Colors.white),
                          ),
                        ),
                      )
                    ],
                  ),
                )
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
                        text: 'LG전자',
                        style: TextStyle(
                            fontFamily: 'NotoSansKR',
                            fontWeight: FontWeight.w700,
                            fontSize: 14,
                            color: ColorConst.colorGrayText),
                      ),
                      TextSpan(
                        text: '스탠바이미 27ART10AKPL (스탠',
                        style: TextStyle(
                            fontFamily: 'NotoSansKR',
                            fontWeight: FontWeight.w500,
                            fontSize: 14,
                            color: ColorConst.colorGrayText),
                      ),
                    ],
                  ),
                ),
                Text(
                  '화면을 이동할 수 있고 전환도 편리하다는 점이 제일 마음에 들었어요. 배송도 빠르고 친절하게 받을 수 있어서 좋았습니다.',
                  maxLines: 1,
                  style: TextStyle(
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: ColorConst.colorGrayText),
                ),
                Text(
                  '스탠바이미는 사랑입니다!️',
                  maxLines: 1,
                  style: TextStyle(
                      fontFamily: 'NotoSansKR',
                      fontWeight: FontWeight.w400,
                      fontSize: 12,
                      color: ColorConst.colorGrayText),
                ),
                Container(
                  padding: const EdgeInsets.symmetric(vertical: 6),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Image.asset(
                        ImageConst.star,
                        width: 10,
                        height: 10,
                      ),
                      SizedBox(
                        width: 3,
                      ),
                      Text(
                        '4.89',
                        maxLines: 1,
                        style: TextStyle(
                            fontFamily: 'NotoSansKR',
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                            color: ColorConst.colorRewardYellow),
                      ),
                      Text(
                        '(1.36)',
                        maxLines: 1,
                        style: TextStyle(
                            fontFamily: 'NotoSansKR',
                            fontWeight: FontWeight.w700,
                            fontSize: 10,
                            color: ColorConst.colorExtraLightGray),
                      ),
                    ],
                  ),
                ),
                Row(
                  children: [
                    InkWell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 6),
                        decoration: BoxDecoration(
                            color: ColorConst.colorGrayBackGround,
                            borderRadius: BorderRadius.circular(6)),
                        child: Text(
                          'LG전자',
                          style: TextStyle(
                              fontFamily: 'NotoSansKR',
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: ColorConst.colorDemiGray),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 4,
                    ),
                    InkWell(
                      child: Container(
                        padding: const EdgeInsets.symmetric(
                            vertical: 5, horizontal: 6),
                        decoration: BoxDecoration(
                            color: ColorConst.colorGrayBackGround,
                            borderRadius: BorderRadius.circular(6)),
                        child: Text(
                          'LG전자',
                          style: TextStyle(
                              fontFamily: 'NotoSansKR',
                              fontWeight: FontWeight.w400,
                              fontSize: 11,
                              color: ColorConst.colorDemiGray),
                        ),
                      ),
                    )
                  ],
                )
              ],
            ),
          ))
        ],
      ),
    );
  }
}
