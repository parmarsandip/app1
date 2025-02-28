import 'package:app1/profile_screen/product_widget/product_widget.dart';
import 'package:app1/profile_screen/product_widget/review_detail_widget.dart';
import 'package:app1/profile_screen/product_widget/user_review_widget.dart';
import 'package:app1/util/colorsconst.dart';
import 'package:app1/util/imageconst.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  List<String> list = [
    '“가격 저렴해요”',
    '“CPU온도 고온”',
    '“서멀작업 가능해요”',
    '“게임 잘 돌아가요”',
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      child: SafeArea(
          child: Scaffold(
        backgroundColor: ColorConst.colorBackground,
        appBar: PreferredSize(
            preferredSize: const Size.fromHeight(55),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border(
                      bottom: BorderSide(color: ColorConst.colorBorder))),
              child: Row(
                children: [
                  InkWell(
                    onTap: () {
                      Navigator.pop(context);
                    },
                    child: SizedBox(
                      height: 30,
                      width: 30,
                      child: Image.asset(
                        ImageConst.backbutton,
                        width: 20,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                  ),
                  Expanded(
                      child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text('랭킹 1위',
                          style: TextStyle(
                              fontFamily: 'NotoSansKR',
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
                              color: ColorConst.colorDemiGray)),
                      Text('베스트 리뷰어',
                          style: TextStyle(
                              fontFamily: 'NotoSansKR',
                              fontWeight: FontWeight.w500,
                              fontSize: 16,
                              color: ColorConst.colorGrayText))
                    ],
                  )),
                  SizedBox(
                    height: 40,
                    width: 40,
                  )
                ],
              ),
            )),
        body: ListView(
          children: [
            Container(
              color: Colors.white,
              padding: const EdgeInsets.all(24),
              child: Column(
                children: [
                  Container(
                    width: 120,
                    height: 120,
                    decoration:
                        BoxDecoration(borderRadius: BorderRadius.circular(60)),
                    child: Image.asset(
                      ImageConst.e1,
                      width: 120,
                      height: 120,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 12, bottom: 2),
                    child: Text('Name01',
                        style: TextStyle(
                            fontFamily: 'NotoSansKR',
                            fontWeight: FontWeight.w500,
                            fontSize: 20,
                            color: ColorConst.colorGrayText)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Image.asset(
                        ImageConst.reward,
                        width: 16,
                        height: 16,
                        color: ColorConst.colorRewardYellow,
                      ),
                      Text('골드',
                          style: TextStyle(
                              fontFamily: 'NotoSansKR',
                              fontWeight: FontWeight.w500,
                              fontSize: 14,
                              color: ColorConst.colorRewardYellow)),
                    ],
                  ),
                  InkWell(
                    child: Container(
                      margin: const EdgeInsets.only(top: 18),
                      padding: const EdgeInsets.symmetric(
                          vertical: 8, horizontal: 12),
                      decoration: BoxDecoration(
                          color: ColorConst.colorGrayBackGround,
                          borderRadius: BorderRadius.circular(6)),
                      child: Text(
                        '조립컴 업체를 운영하며 리뷰를 작성합니다.',
                        style: TextStyle(
                            fontFamily: 'NotoSansKR',
                            fontWeight: FontWeight.w400,
                            fontSize: 14,
                            color: ColorConst.colorDemiGray),
                      ),
                    ),
                  )
                ],
              ),
            ),
            Container(
              color: Colors.white,
              margin: const EdgeInsets.only(top: 14),
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 16, vertical: 12),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            bottom: BorderSide(color: ColorConst.colorBorder))),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                          TextSpan(
                            text: '작성한 리뷰',
                            style: TextStyle(
                                fontFamily: 'NotoSansKR',
                                fontWeight: FontWeight.w500,
                                fontSize: 16,
                                color: Colors.black),
                          ),
                          TextSpan(
                            text: '총 35개',
                            style: TextStyle(
                                fontFamily: 'NotoSansKR',
                                fontWeight: FontWeight.w400,
                                fontSize: 12,
                                color: ColorConst.colorLightBlack),
                          )
                        ])),
                        Expanded(child: Container()),
                        InkWell(
                          onTap: () {
                            ScaffoldMessenger.of(context).showSnackBar(
                              SnackBar(
                                content: Text(
                                  'Latest clicked',
                                  style: TextStyle(
                                      fontFamily: 'NotoSansKR',
                                      fontWeight: FontWeight.w400,
                                      fontSize: 15,
                                      color: Colors.black),
                                ),
                                duration: const Duration(milliseconds: 3000),
                                backgroundColor: ColorConst.colorRewardYellow,
                              ),
                            );
                          },
                          child: Container(
                            padding: const EdgeInsets.symmetric(horizontal: 6),
                            height: 23,
                            width: 70,
                            decoration: BoxDecoration(
                                border: Border.all(
                                  color: ColorConst.colorDemiGray,
                                ),
                                borderRadius: BorderRadius.circular(50)),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text('최신순',
                                    style: TextStyle(
                                        fontFamily: 'NotoSansKR',
                                        fontWeight: FontWeight.w400,
                                        fontSize: 12,
                                        color: ColorConst.colorDemiGray)),
                                Image.asset(
                                  ImageConst.downArray,
                                  width: 6,
                                  height: 4,
                                  fit: BoxFit.fitWidth,
                                )
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    padding: const EdgeInsets.only(bottom: 8, top: 20),
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            bottom: BorderSide(color: ColorConst.colorBorder))),
                    child: ProductWidget(),
                  ),
                  Container(
                    padding:
                        const EdgeInsets.only(left: 16, right: 16, top: 14),
                    child: UserReviewWidget(),
                  ),
                  Container(
                    height: 56,
                    padding: const EdgeInsets.only(top: 26),
                    child: ListView.builder(
                        scrollDirection: Axis.horizontal,
                        itemCount: list.length,
                        itemBuilder: (context, index) {
                          return Container(
                            padding: const EdgeInsets.only(left: 16),
                            child: Text(
                              list[index],
                              style: TextStyle(
                                  fontFamily: 'NotoSansKR',
                                  fontWeight: FontWeight.w700,
                                  fontSize: 10,
                                  color: ColorConst.colorRewardGray),
                            ),
                          );
                        }),
                  ),
                  Container(
                    margin: const EdgeInsets.symmetric(horizontal: 16),
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border(
                            bottom: BorderSide(color: ColorConst.colorBorder))),
                    child: ReviewDetailWidget(),
                  ),
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Row(
                      spacing: 2,
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        InkWell(
                          child: Image.asset(
                            ImageConst.comment,
                            width: 12,
                            fit: BoxFit.fitWidth,
                          ),
                        ),
                        Expanded(
                            child: TextField(
                          style: const TextStyle(
                            color: Colors.black,
                            fontWeight: FontWeight.normal,
                            fontSize: 14.0,
                          ),
                          decoration: const InputDecoration(
                              hintText: '댓글 달기..',
                              border: InputBorder.none,
                              hintStyle: TextStyle(
                                  fontFamily: 'NotoSansKR',
                                  fontWeight: FontWeight.w400,
                                  fontSize: 10,
                                  color: ColorConst.colorLightBlack)),
                        )),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      )),
    );
  }
}
