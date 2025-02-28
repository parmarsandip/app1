import 'package:app1/profile_screen/profile_screen.dart';
import 'package:app1/tab_screen/review_widget/reivew_widget.dart';
import 'package:app1/tab_screen/review_widget/user_widget.dart';
import 'package:app1/util/colorsconst.dart';
import 'package:app1/util/imageconst.dart';
import 'package:dots_indicator/dots_indicator.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  final controller = PageController();
  double currentPage = 0.0;

  List<String> imageArr = [
    ImageConst.b1,
    ImageConst.b2,
    ImageConst.b3,
    ImageConst.b4
  ];

  List<Map<String, String>> userList = [
    {'name': 'Name 01', 'image': ImageConst.e1},
    {'name': 'Name 02', 'image': ImageConst.e2},
    {'name': 'Name 03', 'image': ImageConst.e3},
    {'name': 'Name 04', 'image': ImageConst.e4},
    {'name': 'Name 05', 'image': ImageConst.e5},
    {'name': 'Name 06', 'image': ImageConst.e6},
    {'name': 'Name 07', 'image': ImageConst.e7},
    {'name': 'Name 08', 'image': ImageConst.e8},
    {'name': 'Name 09', 'image': ImageConst.e9},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: ColorConst.colorBackground,
      appBar: PreferredSize(
          preferredSize: const Size.fromHeight(55),
          child: Container(
            padding: const EdgeInsets.all(16),
            alignment: Alignment.centerLeft,
            decoration: BoxDecoration(
                color: Colors.white,
                border:
                    Border(bottom: BorderSide(color: ColorConst.colorBorder))),
            child: Image.asset(
              ImageConst.logo,
              height: 24,
              fit: BoxFit.fitHeight,
            ),
          )),
      body: ListView(
        shrinkWrap: true,
        children: [
          Container(
            padding: const EdgeInsets.only(left: 16, right: 16, top: 24),
            child: Container(
              decoration: kGradientBoxDecoration,
              padding: const EdgeInsets.all(2),
              height: 36,
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                decoration: kInnerDecoration,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Expanded(
                        child: TextField(
                      textAlignVertical: TextAlignVertical.center,
                      style: const TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.normal,
                        fontSize: 14.0,
                      ),
                      decoration: const InputDecoration(
                        hintText: '검색어를 입력하세요',
                        border: InputBorder.none,
                      ),
                    )),
                    InkWell(
                      child: Image.asset(
                        ImageConst.iconSearch,
                        width: 24,
                        fit: BoxFit.fitWidth,
                      ),
                    )
                  ],
                ),
              ),
            ),
          ),
          Container(
            margin: const EdgeInsets.only(top: 26),
            height: 221,
            child: Stack(
              children: <Widget>[
                PageView.builder(
                  physics: AlwaysScrollableScrollPhysics(),
                  controller: controller,
                  itemCount: imageArr.length,
                  onPageChanged: (pageIndex) {
                    setState(() {
                      currentPage = pageIndex.toDouble();
                    });
                  },
                  itemBuilder: (BuildContext context, int index) {
                    return Row(
                      children: [
                        Expanded(
                            child: Image.asset(
                          imageArr[index],
                          height: 221,
                          width: MediaQuery.of(context).size.width,
                          fit: BoxFit.fitWidth,
                        ))
                      ],
                    );
                  },
                ),
                Positioned(
                  bottom: 5.0,
                  left: 0.0,
                  right: 0.0,
                  child: Container(
                    child: Center(
                      child: DotsIndicator(
                        dotsCount: imageArr.length,
                        position: currentPage,
                        animate: true,
                        decorator: DotsDecorator(
                            color: Colors.white.withValues(alpha: 0.5),
                            activeColor: Colors.white,
                            size: const Size.square(6),
                            activeSize: const Size(12.0, 6.0),
                            activeShape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(3.0))),
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Colors.white,
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 28),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '제일 핫한 리뷰를 만나보세요',
                          style: TextStyle(
                              fontFamily: 'NotoSansKR',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: ColorConst.colorLightBlack),
                        ),
                        Text(
                          '리뷰️  랭킹⭐ top 3',
                          style: TextStyle(
                              fontFamily: 'NotoSansKR',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: ColorConst.colorLightBlack),
                        )
                      ],
                    )),
                    InkWell(
                      child: Image.asset(
                        ImageConst.more,
                        height: 14,
                        fit: BoxFit.fitHeight,
                      ),
                    )
                  ],
                ),
                ListView.builder(
                    shrinkWrap: true,
                    physics: NeverScrollableScrollPhysics(),
                    itemCount: 3,
                    itemBuilder: (context, index) {
                      return ReviewWidget();
                    })
              ],
            ),
          ),
          Container(
            color: Colors.white,
            margin: const EdgeInsets.only(top: 14),
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 18),
            child: Column(
              children: [
                Row(
                  children: [
                    Expanded(
                        child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          '골드 계급 사용자들이예요',
                          style: TextStyle(
                              fontFamily: 'NotoSansKR',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: ColorConst.colorLightBlack),
                        ),
                        Text(
                          '베스트 리뷰어 🏆 Top10',
                          style: TextStyle(
                              fontFamily: 'NotoSansKR',
                              fontWeight: FontWeight.w400,
                              fontSize: 12,
                              color: ColorConst.colorLightBlack),
                        )
                      ],
                    )),
                  ],
                ),
                Container(
                  height: 106,
                  margin: const EdgeInsets.only(top: 14),
                  child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: userList.length,
                      itemBuilder: (context, index) {
                        return InkWell(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ProfileScreen();
                            }));
                          },
                          child: UserWidget(
                            isStory: index == 0 ? true : false,
                            image: userList[index]['image'] ?? '',
                            name: userList[index]['name'] ?? '',
                          ),
                        );
                      }),
                )
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            margin: const EdgeInsets.only(top: 12),
            child: Text(
              'LOGO Inc.',
              style: TextStyle(
                  fontFamily: 'NotoSansKR',
                  fontWeight: FontWeight.w500,
                  fontSize: 14,
                  color: ColorConst.colorDemiGray),
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Text('회사 소개',
                    style: TextStyle(
                        fontFamily: 'NotoSansKR',
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: ColorConst.colorDemiGray)),
                Container(
                  width: 1,
                  height: 9,
                  color: ColorConst.colorDemiGray,
                ),
                Text('인재 채용',
                    style: TextStyle(
                        fontFamily: 'NotoSansKR',
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: ColorConst.colorDemiGray)),
                Container(
                  width: 1,
                  height: 9,
                  color: ColorConst.colorDemiGray,
                ),
                Text('기술 블로그',
                    style: TextStyle(
                        fontFamily: 'NotoSansKR',
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: ColorConst.colorDemiGray)),
                Container(
                  width: 1,
                  height: 9,
                  color: ColorConst.colorDemiGray,
                ),
                Text('리뷰 저작권',
                    style: TextStyle(
                        fontFamily: 'NotoSansKR',
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: ColorConst.colorDemiGray)),
              ],
            ),
          ),
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            margin: const EdgeInsets.only(top: 20),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Image.asset(
                  ImageConst.send,
                  width: 16,
                  height: 16,
                  fit: BoxFit.fitWidth,
                ),
                Text('review@logo.com',
                    style: TextStyle(
                        fontFamily: 'NotoSansKR',
                        fontWeight: FontWeight.w400,
                        fontSize: 13,
                        color: ColorConst.colorDemiGray)),
                Expanded(child: Container()),
                Container(
                  padding: const EdgeInsets.symmetric(horizontal: 6),
                  height: 18,
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
                      Text('KOR',
                          style: TextStyle(
                              fontFamily: 'NotoSansKR',
                              fontWeight: FontWeight.w400,
                              fontSize: 10,
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
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
            height: 1,
            color: ColorConst.colorBottomLine,
          ),
          Container(
            margin: const EdgeInsets.only(left: 16, right: 16, bottom: 20),
            child: Text('@2022-2022 LOGO Lab, Inc. (주)아무개  서울시 강남구',
                style: TextStyle(
                    fontFamily: 'NotoSansKR',
                    fontWeight: FontWeight.w400,
                    fontSize: 10,
                    color: ColorConst.colorDemiGray)),
          ),
        ],
      ),
    );
  }

  final kGradientBoxDecoration = BoxDecoration(
    gradient: LinearGradient(colors: [
      ColorConst.colorSearchGradient1,
      ColorConst.colorSearchGradient2
    ]),
    borderRadius: BorderRadius.circular(10),
  );

  final kInnerDecoration = BoxDecoration(
    color: Colors.white,
    borderRadius: BorderRadius.circular(8),
  );
}
