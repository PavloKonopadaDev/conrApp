import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants.dart';

class TabBarAll extends StatefulWidget {
  @override
  _TabBarAllState createState() => _TabBarAllState();
}

class _TabBarAllState extends State<TabBarAll> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
        child: Column(
      children: [
        Column(children: [
          SizedBox(
            height: ScreenUtil().setHeight(24),
          ),
          Column(
            children: [
              Row(
                children: [
                  SizedBox(
                    width: ScreenUtil().setWidth(15),
                  ),
                  _buildFilterBttn(),
                ],
              ),
            ],
          ),
          _buildOnBoardongBttn(),
        ]),
      ],
    ));
  }

  Widget _buildOnBoardongBttn() {
    return InkWell(
      onTap: () {
        return Navigator.of(context).pushNamed("/onBoardingPages");
      },
      child: Container(
        height: ScreenUtil().setHeight(36),
        width: ScreenUtil().setWidth(82),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF989898),
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 5, top: 4, bottom: 4, right: 10),
          child: Container(
            height: ScreenUtil().setHeight(24),
            width: ScreenUtil().setWidth(63),
            color: Colors.black,
            child: Row(
              children: [
                Container(
                  height: ScreenUtil().setHeight(24),
                  width: ScreenUtil().setWidth(24),
                  child: Row(
                    children: [
                      Container(
                        alignment: Alignment.center,
                        height: ScreenUtil().setHeight(20.7),
                        width: ScreenUtil().setWidth(7.71),
                        child: Icon(
                          Icons.south,
                          color: Colors.white,
                          size: 17,
                        ),
                      ),
                      SizedBox(
                        width: ScreenUtil().setWidth(3),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(bottom: 6),
                        child: Container(
                          height: ScreenUtil().setHeight(14.7),
                          width: ScreenUtil().setWidth(7.71),
                          child: Icon(
                            Icons.north,
                            color: Colors.white,
                            size: 17,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(5),
                ),
                Container(
                  child: textforroutibgOnBoardpages,
                  height: ScreenUtil().setHeight(14),
                  width: ScreenUtil().setWidth(34),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildFilterBttn() {
    return InkWell(
      onTap: () {},
      child: Container(
        height: ScreenUtil().setHeight(36),
        width: ScreenUtil().setWidth(90),
        decoration: BoxDecoration(
          border: Border.all(
            color: Color(0xFF989898),
            width: 2.0,
          ),
          borderRadius: BorderRadius.all(Radius.circular(3.0)),
        ),
        child: Padding(
          padding: const EdgeInsets.only(left: 5, top: 4, bottom: 4, right: 10),
          child: Container(
            height: ScreenUtil().setHeight(24),
            width: ScreenUtil().setWidth(71),
            color: Colors.black,
            child: Row(
              children: [
                Container(
                  height: ScreenUtil().setHeight(24),
                  width: ScreenUtil().setWidth(24),
                  child: Icon(
                    Icons.filter_alt,
                    color: Colors.white,
                    size: 17,
                  ),
                ),
                SizedBox(
                  width: ScreenUtil().setWidth(5),
                ),
                Container(
                  child: textForSortBttnOnTabBarAll,
                  height: ScreenUtil().setHeight(14),
                  width: ScreenUtil().setWidth(42),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
