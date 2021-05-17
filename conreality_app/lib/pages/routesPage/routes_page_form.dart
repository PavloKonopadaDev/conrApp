import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../constants.dart';

class RoutesPageForm extends StatefulWidget {
  @override
  _RoutesPageFormState createState() => _RoutesPageFormState();
}

class _RoutesPageFormState extends State<RoutesPageForm> {
  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812);
    return Scaffold(
      backgroundColor: backgroundRoutesPage,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: ScreenUtil().setHeight(149.89),
            ),
            _logoImageBuild(),
            SizedBox(
              height: ScreenUtil().setHeight(11.46),
            ),
            _wordUnderLogoBuild(),
            SizedBox(
              height: ScreenUtil().setHeight(93.65),
            ),
            _bigTextBuild(),
            SizedBox(
              height: ScreenUtil().setHeight(50),
            ),
            _signUpButtonBuild(),
            SizedBox(
              height: ScreenUtil().setHeight(25.92),
            ),
            _logInButtonBuild(),
            SizedBox(
              height: ScreenUtil().setHeight(46.19),
            ),
            _textBottomBuild(),
            SizedBox(
              height: ScreenUtil().setHeight(32),
            ),
            _joinToGameButtonBuild(),
          ],
        ),
      ),
    );
  }

  Widget _logoImageBuild() {
    return Container(
      width: ScreenUtil().setWidth(48.75),
      height: ScreenUtil().setHeight(49.73),
      child: Image.asset(logoRoutesPage),
    );
  }

  Widget _wordUnderLogoBuild() {
    return Container(
      width: ScreenUtil().setWidth(160.41),
      height: ScreenUtil().setHeight(20.92),
      child: Image.asset(wordRoutesPage),
    );
  }

  Widget _bigTextBuild() {
    return Container(
      width: ScreenUtil().setWidth(305.6),
      height: ScreenUtil().setHeight(80.35),
      child: bigTextRoutesPage,
    );
  }

  Widget _signUpButtonBuild() {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32),
      child: Container(
          width: ScreenUtil().setWidth(311),
          height: ScreenUtil().setHeight(48),
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/signUp");
            },
            color: signUpRoutesPageColor,
            child: signUpRoutesPageText,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0)),
          )),
    );
  }

  Widget _logInButtonBuild() {
    return Padding(
      padding: const EdgeInsets.only(left: 33, right: 31),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(
            color: Color(0xFF989898),
            width: ScreenUtil().setWidth(2),
          )),
          width: ScreenUtil().setWidth(311),
          height: ScreenUtil().setHeight(48),
          child: RaisedButton(
            onPressed: () {},
            color: logInRoutesPageColor,
            child: logInRoutesPageText,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0)),
          )),
    );
  }

  Widget _textBottomBuild() {
    return Padding(
      padding: const EdgeInsets.only(left: 49.23, right: 52.63),
      child: Container(
        width: ScreenUtil().setWidth(273.14),
        height: ScreenUtil().setHeight(53.81),
        child: bottomTextRoutesPage,
      ),
    );
  }

  Widget _joinToGameButtonBuild() {
    return Padding(
      padding: const EdgeInsets.only(left: 33, right: 31),
      child: Container(
          decoration: BoxDecoration(
              border: Border.all(
            color: Color(0xFF989898),
            width: ScreenUtil().setWidth(2),
          )),
          width: ScreenUtil().setWidth(311),
          height: ScreenUtil().setHeight(48),
          child: RaisedButton(
            onPressed: () {
              Navigator.of(context).pushNamed("/qrCodeScan");
            },
            color: joinToGameRoutesPageColor,
            child: joinToGameRoutesPageText,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0)),
          )),
    );
  }
}
