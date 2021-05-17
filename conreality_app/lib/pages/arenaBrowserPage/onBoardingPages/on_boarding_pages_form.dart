import 'package:conreality_app/pages/arenaBrowserPage/onBoardingPages/on_boarding_data.dart';
import 'package:flutter/material.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class OnBoarding extends StatefulWidget {
  @override
  _OnBoardingState createState() => _OnBoardingState();
}

class _OnBoardingState extends State<OnBoarding> {
  List<SliderModel> slides = List<SliderModel>();
  int currentIndex = 0;
  PageController pageController = PageController(
    initialPage: 0,
  );
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    slides = getSlides();
  }

  Widget pageIndexIndicator(bool isCurrentPage) {
    return Container(
      width: ScreenUtil().setWidth(5),
      height: ScreenUtil().setHeight(5),
      // padding: EdgeInsets.symmetric(horizontal: 100.0),

      decoration: BoxDecoration(
          color: isCurrentPage ? Colors.black : Colors.grey,
          borderRadius: BorderRadius.circular(100)),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black,
      body: Center(
        child: Column(
          // mainAxisAlignment: MainAxisAlignment.center,
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(147),
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
              ),
              // width: ScreenUtil().setWidth(335),
              // height: ScreenUtil().setHeight(432),
              child: Column(children: [
                Container(
                  width: ScreenUtil().setWidth(335),
                  height: ScreenUtil().setHeight(420),
                  child: PageView.builder(
                      // physics: NeverScrollableScrollPhysics(),
                      controller: pageController,
                      onPageChanged: (val) {
                        setState(() {
                          currentIndex = val;
                        });
                      },
                      itemCount: slides.length,
                      itemBuilder: (context, index) {
                        return SliderTile(
                          img: slides[index].getImgAsset(),
                          title: slides[index].getTitle(),
                          subTitle: slides[index].getSubTitle(),
                          descript: slides[index].getDescrip(),
                        );
                      }),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(43),
                ),
                Container(
                  width: ScreenUtil().setWidth(40),
                  height: ScreenUtil().setHeight(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      for (int i = 0; i < slides.length; i++)
                        currentIndex == i
                            ? pageIndexIndicator(true)
                            : pageIndexIndicator(false)
                    ],
                  ),
                ),
                SizedBox(
                  height: ScreenUtil().setHeight(14),
                ),
              ]),
            ),
            SizedBox(
              height: ScreenUtil().setHeight(49),
            ),
            currentIndex != slides.length - 1
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: ScreenUtil().setWidth(66),
                          ),
                          Container(
                            color: Colors.transparent,
                            width: ScreenUtil().setWidth(24),
                            height: ScreenUtil().setHeight(14),
                            child: InkWell(
                              onTap: () {
                                pageController.animateToPage(slides.length - 1,
                                    duration: Duration(milliseconds: 400),
                                    curve: Curves.bounceIn);
                              },
                              child: Text(
                                "Skip",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: ScreenUtil().setSp(12),
                                    color: Color(0xFFFFFFFF),
                                    height: ScreenUtil().setHeight(1.16)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(66),
                          ),
                          Container(
                            width: ScreenUtil().setWidth(197),
                            height: ScreenUtil().setHeight(54),
                            child: RaisedButton(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(59)),
                              onPressed: () {
                                pageController.nextPage(
                                    duration: Duration(milliseconds: 400),
                                    curve: Curves.bounceIn);
                              },
                              child: Text(
                                "NEXT",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: ScreenUtil().setSp(12),
                                    color: Color(0xFF000000),
                                    height: ScreenUtil().setHeight(1.16)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(20),
                          ),
                        ],
                      ),
                    ],
                  )
                : Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          SizedBox(
                            width: ScreenUtil().setWidth(66),
                          ),
                          Container(
                            color: Colors.transparent,
                            width: ScreenUtil().setWidth(24),
                            height: ScreenUtil().setHeight(14),
                            child: InkWell(
                              onTap: () {
                                pageController.jumpToPage(
                                  slides.length - 1,
                                );
                              },
                              child: Text(
                                "Skip",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: ScreenUtil().setSp(12),
                                    color: Color(0xFFFFFFFF),
                                    height: ScreenUtil().setHeight(1.16)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(66),
                          ),
                          Container(
                            width: ScreenUtil().setWidth(197),
                            height: ScreenUtil().setHeight(54),
                            child: RaisedButton(
                              color: Colors.white,
                              shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(59)),
                              onPressed: () {
                                pageController.jumpToPage(currentIndex++);
                                // nextPage(
                                //     duration: Duration(milliseconds: 15),
                                //     curve: Curves.bounceIn);
                              },
                              child: Text(
                                "FINISH",
                                style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: ScreenUtil().setSp(12),
                                    color: Color(0xFF000000),
                                    height: ScreenUtil().setHeight(1.16)),
                                textAlign: TextAlign.center,
                              ),
                            ),
                          ),
                          SizedBox(
                            width: ScreenUtil().setWidth(20),
                          ),
                        ],
                      ),
                    ],
                  )
          ],
        ),
      ),
    );
  }
}

class SliderTile extends StatelessWidget {
  String img;
  String title;
  String subTitle;
  String descript;
  SliderTile({
    this.descript,
    this.subTitle,
    this.img,
    this.title,
  });
  @override
  Widget build(BuildContext context) {
    return Container(
      width: ScreenUtil().setWidth(335),
      height: ScreenUtil().setHeight(432),
      child: Column(
        children: [
          Column(
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(24.74),
              ),
              Container(
                width: ScreenUtil().setWidth(224),
                height: ScreenUtil().setHeight(69),
                child: Column(
                  children: [
                    Text(
                      title,
                      style: TextStyle(
                          fontWeight: FontWeight.w200,
                          fontSize: ScreenUtil().setSp(24),
                          color: Color(0xFF000000),
                          height: ScreenUtil().setHeight(1.5)),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      subTitle,
                      style: TextStyle(
                          fontWeight: FontWeight.w500,
                          fontSize: ScreenUtil().setSp(18),
                          color: Color(0xFF000000),
                          height: ScreenUtil().setHeight(1.5)),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(26),
              ),
              Container(
                decoration: BoxDecoration(
                  image:
                      DecorationImage(fit: BoxFit.fill, image: AssetImage(img)),
                  color: Colors.black,
                  borderRadius: BorderRadius.circular(10),
                ),
                width: ScreenUtil().setWidth(315),
                height: ScreenUtil().setHeight(172),
              ),
              SizedBox(
                height: ScreenUtil().setHeight(19),
              ),
              Container(
                width: ScreenUtil().setWidth(287),
                // height: ScreenUtil().setHeight(54),
                child: Text(
                  descript,
                  style: TextStyle(
                      fontWeight: FontWeight.w500,
                      fontSize: ScreenUtil().setSp(18),
                      color: Color(0xFF000000),
                      height: ScreenUtil().setHeight(1.5)),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
