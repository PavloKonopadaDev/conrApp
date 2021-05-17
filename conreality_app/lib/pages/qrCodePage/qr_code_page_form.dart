import 'package:conreality_app/constants.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:flutter/services.dart';
import 'package:barcode_scan/barcode_scan.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class QrCodePageForm extends StatefulWidget {
  QrCodePageForm({Key key}) : super(key: key);

  @override
  _QrCodePageFormState createState() => _QrCodePageFormState();
}

class _QrCodePageFormState extends State<QrCodePageForm> {
  String barcode = "";

  @override
  initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: backgroundQrCodeForm,
        appBar: _buildAppbar(),
        body: Center(
          child: Column(
            children: [
              SizedBox(
                height: ScreenUtil().setHeight(168),
              ),
              _buildResult(),
              SizedBox(
                height: ScreenUtil().setHeight(133.13),
              ),
              _buildScanButton()
            ],
          ),
        ));
  }

  Future scan() async {
    try {
      String barcode = await BarcodeScanner.scan();
      setState(() => this.barcode = barcode);
    } on PlatformException catch (e) {
      if (e.code == BarcodeScanner.CameraAccessDenied) {
        setState(() {
          this.barcode = 'The user did not grant the camera permission!';
        });
      } else {
        setState(() => this.barcode = 'Unknown error: $e');
      }
    } on FormatException {
      setState(() => this.barcode =
          'null (User returned using the "back"-button before scanning anything. Result)');
    } catch (e) {
      setState(() => this.barcode = 'Unknown error: $e');
    }
  }

  Widget _buildAppbar() {
    return AppBar(
      title: titleOfAppBarQrCodeForm,
      centerTitle: true,
      toolbarHeight: ScreenUtil().setHeight(80),
      backgroundColor: appBarQrCodeFormColor,
    );
  }

  Widget _buildResult() {
    return Container(
      width: ScreenUtil().setWidth(276),
      height: ScreenUtil().setHeight(308.87),
      color: Colors.white,
      child: Stack(
        children: [
          Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  width: ScreenUtil().setWidth(260),
                  height: ScreenUtil().setHeight(260),
                  child: Image.asset("assets/images/qrCode.png"),
                )
              ],
            ),
          ),
          Positioned(
            top: 0,
            left: 0,
            child: Container(
              width: ScreenUtil().setWidth(41.74),
              height: ScreenUtil().setHeight(41.74),
              child: Image.asset("assets/images/topLeftCorner.png"),
            ),
          ),
          Positioned(
            top: 0,
            right: 0,
            child: Container(
              width: ScreenUtil().setWidth(41.74),
              height: ScreenUtil().setHeight(41.74),
              child: Image.asset("assets/images/topRightCorner.png"),
            ),
          ),
          Positioned(
            bottom: 0,
            left: 0,
            child: Container(
              width: ScreenUtil().setWidth(41.74),
              height: ScreenUtil().setHeight(41.74),
              child: Image.asset("assets/images/bottomLeftCorner.png"),
            ),
          ),
          Positioned(
            bottom: 0,
            right: 0,
            child: Container(
              width: ScreenUtil().setWidth(41.74),
              height: ScreenUtil().setHeight(41.74),
              child: Image.asset("assets/images/bottomRightCorner.png"),
            ),
          )
        ],
      ),
    );
  }

  Widget _buildScanButton() {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 32),
      child: Container(
          width: ScreenUtil().setWidth(311),
          height: ScreenUtil().setHeight(48),
          child: RaisedButton(
            onPressed: scan,
            color: scanColorButtonQrCodeForm,
            child: scanTextButtonQrCodeForm,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(3.0)),
          )),
    );
  }
}
