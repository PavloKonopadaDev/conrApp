import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

const backgroundRoutesPage = Colors.black;
const String logoRoutesPage = "assets/images/routesPagelogo.png";
const String wordRoutesPage = "assets/images/routesPageword.png";
Widget bigTextRoutesPage = Text(
  "Play with us.",
  style: TextStyle(
    fontWeight: FontWeight.w500,
    fontSize: ScreenUtil().setSp(38),
    color: Colors.white,
    height: ScreenUtil().setHeight(1.4),
  ),
);
const signUpRoutesPageColor = Color(0xFF989898);
Widget signUpRoutesPageText = Text(
  "SIGN UP",
  style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: ScreenUtil().setSp(14),
      color: Color(0xFFFFFFFF),
      height: ScreenUtil().setHeight(1.17)),
  textAlign: TextAlign.center,
);
const logInRoutesPageColor = Color(0xFF000000);
Widget logInRoutesPageText = Text(
  "LOG IN",
  style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: ScreenUtil().setSp(14),
      color: Color(0xFFFFFFFF),
      height: ScreenUtil().setHeight(1.17)),
  textAlign: TextAlign.center,
);
Widget bottomTextRoutesPage = Text(
  "or scan QR code and \n" " join to game",
  style: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(16),
    color: Colors.white,
    height: ScreenUtil().setHeight(1.4),
  ),
  textAlign: TextAlign.center,
);
const joinToGameRoutesPageColor = Color(0xFF000000);
Widget joinToGameRoutesPageText = Text(
  "JOIN TO GAME",
  style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: ScreenUtil().setSp(14),
      color: Color(0xFFFFFFFF),
      height: ScreenUtil().setHeight(1.17)),
  textAlign: TextAlign.center,
);

Widget titleOfAppBarSignUp = Text(
  'Conreality',
  style: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(20),
    height: ScreenUtil().setHeight(1.17),
  ),
  textAlign: TextAlign.center,
);
const appBarSignUpColor = Color(0xFF8E8D8D);
const backgroundSignUpPage = Color(0xFF000000);
Widget labeltextofEmailSignUpPage = Text(
  "E-mail",
  style: TextStyle(
      fontSize: ScreenUtil().setSp(13),
      height: ScreenUtil().setHeight(1.17),
      color: Color(0xFFB6B5B5),
      fontWeight: FontWeight.w400),
);
Widget labeltextofPasswordSignUpPage = Text(
  "Password",
  style: TextStyle(
      fontSize: ScreenUtil().setSp(13),
      height: ScreenUtil().setHeight(1.17),
      color: Color(0xFFB6B5B5),
      fontWeight: FontWeight.w400),
);
const signUpSignUpPageColor = Color(0xFF989898);
Widget signUpSignUpPageText = Text(
  "SIGN UP",
  style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: ScreenUtil().setSp(14),
      color: Color(0xFFFFFFFF),
      height: ScreenUtil().setHeight(1.17)),
  textAlign: TextAlign.center,
);
Widget forgotPasswordSignUpPageText = Text(
  "FORFOT YOUR PASSWORD?",
  style: TextStyle(
      fontSize: ScreenUtil().setSp(14),
      height: ScreenUtil().setHeight(1.17),
      color: Color(0xFFFFFFFF),
      fontWeight: FontWeight.w500),
);

Widget titleOfAppBarQrCodeForm = Text(
  'Join to game',
  style: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(20),
    height: ScreenUtil().setHeight(1.17),
  ),
  textAlign: TextAlign.center,
);
const appBarQrCodeFormColor = Color(0xFF8E8D8D);
const backgroundQrCodeForm = Color(0xFFFFFFFF);
const scanColorButtonQrCodeForm = Color(0xFF989898);
Widget scanTextButtonQrCodeForm = Text(
  "SCAN QR-CODE",
  style: TextStyle(
      fontWeight: FontWeight.w500,
      fontSize: ScreenUtil().setSp(14),
      color: Color(0xFFFFFFFF),
      height: ScreenUtil().setHeight(1.17)),
  textAlign: TextAlign.center,
);

Widget titleOfAppBarArenaBrowserPage = Text(
  'Arena browser',
  style: TextStyle(
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(20),
    height: ScreenUtil().setHeight(1.17),
  ),
  textAlign: TextAlign.center,
);
const backgroundArenaBrowserPage = Color(0xFF000000);
const appBarArenaBrowserPageColor = Color(0xFF8E8D8D);

const backgroundArenaBrowserPageBottomAppBar = Color(0xFF000000);
const colorForBottomIcons = Color(0xFF989898);
Widget bottomAppBarTextForProfileButton = Text(
  "Profile",
  style: TextStyle(
    color: Color(0xFF989898),
    fontSize: ScreenUtil().setSp(12),
    fontWeight: FontWeight.w500,
    height: ScreenUtil().setHeight(1.17),
  ),
  textAlign: TextAlign.center,
);
Widget bottomAppBarTextForArenaButton = Text(
  "Arena",
  style: TextStyle(
    color: Color(0xFF989898),
    fontSize: ScreenUtil().setSp(12),
    fontWeight: FontWeight.w500,
    height: ScreenUtil().setHeight(1.17),
  ),
  textAlign: TextAlign.center,
);
Widget bottomAppBarTextForTeamsButton = Text(
  "Teams",
  style: TextStyle(
    color: Color(0xFF989898),
    fontSize: ScreenUtil().setSp(12),
    fontWeight: FontWeight.w500,
    height: ScreenUtil().setHeight(1.17),
  ),
  textAlign: TextAlign.center,
);
Widget bottomAppBarTextForChatsButton = Text(
  "Chats",
  style: TextStyle(
    color: Color(0xFF989898),
    fontSize: ScreenUtil().setSp(12),
    fontWeight: FontWeight.w500,
    height: ScreenUtil().setHeight(1.17),
  ),
  textAlign: TextAlign.center,
);

Widget textForTabBarAll = Text(
  'All',
  style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(14),
  ),
);
Widget textForTabBarFavourites = Text(
  'Favorite',
  style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(14),
  ),
);
Widget textForTabBarMyArena = Text(
  'My Arena',
  style: TextStyle(
    color: Colors.white,
    fontWeight: FontWeight.w400,
    fontSize: ScreenUtil().setSp(14),
  ),
);
Widget textForSortBttnOnTabBarAll = Text(
  "FILTER",
  style: TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: ScreenUtil().setSp(12),
    fontWeight: FontWeight.w500,
    height: ScreenUtil().setHeight(1.16),
  ),
  textAlign: TextAlign.center,
);
const backgroundCreateArenaColor = Color(0xFF2B2B2B);

// for onBoarding pages(and button)

Widget textforroutibgOnBoardpages = Text(
  "BOARD",
  style: TextStyle(
    color: Color(0xFFFFFFFF),
    fontSize: ScreenUtil().setSp(12),
    fontWeight: FontWeight.w500,
    height: ScreenUtil().setHeight(1.16),
  ),
  textAlign: TextAlign.center,
);
//1
const String titleforfirstcard = "How to create";
const String subtitleforfirstcard = "Your first map";
const String imageforfirstcard = "assets/images/OnboardImage1.png";
const String textforfirstcard =
    "Tap and start creating the\n boundaries of your map";
//2
const String titleforsecondcard = "How to create";
const String subtitleforsecondcard = "Your first map";
const String imageforsecondcard = "assets/images/OnboardImage1.png";
const String textforsecondcard =
    "You can create new points and thus\n create a zone";
//3
const String titleforthirdcard = "How to create";
const String subtitleforthirdcard = "Your first map";
const String imageforthirdcard = "assets/images/OnBoardimage2.png";
const String textforthirdcard =
    "By clicking on the point it is \n possible to delete it";
//4
const String titleforfourthcard = "How to create";
const String subtitleforfourthcard = "Your first map";
const String imageforfourthcard = "assets/images/OnBoardimage2.png";
const String textforfourthcard =
    "You can add additional items to the \n map, such as: cartridges, first aid \n kit, turret, flag";
