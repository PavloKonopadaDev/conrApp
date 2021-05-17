import 'package:conreality_app/pages/arenaBrowserPage/tabBarPages/tabBarAll/tab_bar_all.dart';
import 'package:conreality_app/pages/arenaBrowserPage/tabBarPages/tabBarFavourite/tab_bar_favourite.dart';
import 'package:conreality_app/pages/arenaBrowserPage/tabBarPages/tabBarMyArena/tab_bar_my_arena.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:conreality_app/constants.dart';

class ArenaBrowserForm extends StatefulWidget {
  @override
  _ArenaBrowserFormState createState() => _ArenaBrowserFormState();
}

class _ArenaBrowserFormState extends State<ArenaBrowserForm> {
  int selectedIndex = 0;
  void updateTabSelection(int index) {
    setState(() {
      selectedIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 3,
      child: Scaffold(
        backgroundColor: backgroundArenaBrowserPage,
        appBar: _buildAppBar(),
        body: TabBarView(
          children: [
            TabBarAll(),
            TabBarFavourite(),
            TabBarMyArena(),
          ],
        ),
        bottomNavigationBar: _buildBottomNavBar(),
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: titleOfAppBarArenaBrowserPage,
      centerTitle: true,
      backgroundColor: appBarArenaBrowserPageColor,
      leading: GestureDetector(
          onTap: () {
            Navigator.pushNamed(context, "/createArenaContainer");
          },
          child: Container(
              width: ScreenUtil().setWidth(0),
              height: ScreenUtil().setHeight(14.31),
              child: Icon(
                Icons.add_outlined,
                color: Colors.white,
              ))),
      actions: [
        Container(
          width: ScreenUtil().setWidth(24),
          height: ScreenUtil().setHeight(24),
          child: GestureDetector(
            onTap: () {},
            child: Icon(Icons.qr_code_scanner_outlined),
          ),
        ),
        SizedBox(
          width: ScreenUtil().setWidth(23),
        ),
        Container(
          width: ScreenUtil().setWidth(17.49),
          height: ScreenUtil().setHeight(17.49),
          child: GestureDetector(
            onTap: () {},
            child: Icon(Icons.search),
          ),
        ),
        SizedBox(
          width: ScreenUtil().setWidth(18.51),
        ),
      ],
      bottom: TabBar(
        indicator: UnderlineTabIndicator(
          borderSide: BorderSide(width: 2.0, color: Color(0xFFFFFFFF)),
        ),
        isScrollable: false,
        tabs: [
          Tab(child: textForTabBarAll),
          Tab(child: textForTabBarFavourites),
          Tab(child: textForTabBarMyArena),
        ],
      ),
    );
  }

  Widget _buildBottomNavBar() {
    return Container(
      width: ScreenUtil().setWidth(374.74),
      height: ScreenUtil().setHeight(73.6),
      child: BottomNavigationBar(
        type: BottomNavigationBarType.fixed,
        backgroundColor: backgroundArenaBrowserPageBottomAppBar,
        currentIndex: selectedIndex,
        items: [
          BottomNavigationBarItem(
              icon: Container(
                  width: ScreenUtil().setWidth(37),
                  height: ScreenUtil().setHeight(40),
                  child: IconButton(
                      onPressed: () {
                        updateTabSelection(0);
                      },
                      icon: Icon(Icons.panorama_fish_eye,
                          color: colorForBottomIcons))),
              title: bottomAppBarTextForProfileButton),
          BottomNavigationBarItem(
              icon: Container(
                  width: ScreenUtil().setWidth(37),
                  height: ScreenUtil().setHeight(40),
                  child: IconButton(
                      onPressed: () {
                        updateTabSelection(1);
                      },
                      icon: Icon(Icons.panorama_fish_eye,
                          color: colorForBottomIcons))),
              title: bottomAppBarTextForArenaButton),
          BottomNavigationBarItem(
              icon: Container(
                  width: ScreenUtil().setWidth(37),
                  height: ScreenUtil().setHeight(40),
                  child: IconButton(
                      onPressed: () {
                        updateTabSelection(2);
                      },
                      icon: Icon(Icons.panorama_fish_eye,
                          color: colorForBottomIcons))),
              title: bottomAppBarTextForTeamsButton),
          BottomNavigationBarItem(
              icon: Container(
                  width: ScreenUtil().setWidth(37),
                  height: ScreenUtil().setHeight(40),
                  child: IconButton(
                      onPressed: () {
                        updateTabSelection(3);
                      },
                      icon: Icon(Icons.panorama_fish_eye,
                          color: colorForBottomIcons))),
              title: bottomAppBarTextForChatsButton),
        ],
        onTap: (index) {
          // print("1");
          setState(() {
            selectedIndex = index;
          });
        },
      ),
    );
  }
}
