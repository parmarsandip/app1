import 'package:app1/util/colorsconst.dart';
import 'package:app1/util/imageconst.dart';
import 'package:flutter/material.dart';

class ReviewDetailWidget extends StatelessWidget {
  final List<String> listProductImage = [
    ImageConst.p1,
    ImageConst.p2,
    ImageConst.p3
  ];

  ReviewDetailWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(left: 16, right: 16, top: 18, bottom: 15),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        spacing: 18,
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                ImageConst.charge,
                width: 20,
                height: 20,
                fit: BoxFit.fitHeight,
                color: ColorConst.colorBlue,
              ),
              Expanded(
                  child: Text(
                '멀티 작업도 잘 되고 꽤 괜찮습니다. 저희 회사 고객님들에게도 추천 가능한 제품인 듯 합니다.',
                style: TextStyle(
                    fontFamily: 'NotoSansKR',
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: ColorConst.colorLightBlack),
              ))
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image.asset(
                ImageConst.charge,
                width: 20,
                height: 20,
                fit: BoxFit.fitHeight,
                color: ColorConst.colorBorder,
              ),
              Expanded(
                  child: Text(
                '3600에서 바꾸니 체감이 살짝 되네요. 버라이어티한 느낌 까지는 아닙니다.',
                style: TextStyle(
                    fontFamily: 'NotoSansKR',
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: ColorConst.colorLightBlack),
              ))
            ],
          ),
          SizedBox(
            height: 70,
            child: ListView.builder(
                scrollDirection: Axis.horizontal,
                itemCount: listProductImage.length,
                itemBuilder: (context, index) {
                  return Container(
                    padding: const EdgeInsets.only(left: 8, right: 8),
                    child: Image.asset(
                      listProductImage[index],
                      width: 70,
                      height: 70,
                      fit: BoxFit.fitWidth,
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
