import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class TabBarMyArena extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        mainAxisSize: MainAxisSize.max,
        children: [
          _buildCard(),
          SizedBox(
            height: ScreenUtil().setHeight(5),
          ),
          _buildCard(),
          SizedBox(
            height: ScreenUtil().setHeight(5),
          ),
          _buildCard(),
          SizedBox(
            height: ScreenUtil().setHeight(5),
          ),
          _buildCard(),
        ],
      ),
    );
  }

  Widget _buildCard() {
    return Card(
      child: Column(
        // mainAxisAlignment: MainAxisAlignment.start,
        children: [
          SizedBox(height: ScreenUtil().setWidth(10)),
          Row(
            children: [
              Container(
                height: ScreenUtil().setHeight(55),
                width: ScreenUtil().setWidth(75),
                decoration: BoxDecoration(
                  color: Colors.white,
                  shape: BoxShape.circle,
                ),
                child: CircleAvatar(
                  radius: 300,
                  backgroundImage: AssetImage("assets/images/qrCode.png"),
                ),
              ),
              Column(
                children: [
                  Text(
                    "Ami Koehler",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff3c4f5e),
                      fontSize: ScreenUtil().setSp(15),
                    ),
                  ),
                  Text(
                    "@dropperidiot",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xffe17072),
                      fontSize: ScreenUtil().setSp(10),
                    ),
                  ),
                ],
              ),
              SizedBox(width: ScreenUtil().setWidth(90)),
              Column(
                children: [
                  Text(
                    "3 minutes ago",
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xff4e606e),
                      fontSize: ScreenUtil().setSp(10),
                    ),
                  ),
                  Text(
                    "in Los Angeles",
                    style: TextStyle(
                      fontWeight: FontWeight.w400,
                      color: Color(0xffe26571),
                      fontSize: ScreenUtil().setSp(8),
                    ),
                  ),
                ],
              ),
              IconButton(
                icon: new Icon(Icons.location_on),
                color: Color(0xff4e606e),
                onPressed: () {},
              ),
            ],
          ),
          SizedBox(height: ScreenUtil().setWidth(7)),
          Container(
            width: double.infinity,
            height: ScreenUtil().setHeight(440),
            child: Image.asset("assets/images/qrCode.png"),
          ),
          Row(
            children: [
              Container(
                alignment: Alignment.center,
                height: ScreenUtil().setHeight(75),
                width: ScreenUtil().setWidth(200),
                child: Text(
                  "The park is a favourite among skaters in California and it definitely deserves it. The park is complete rith plenty of smooth banks to",
                  style: TextStyle(
                    height: 1.54,
                    fontWeight: FontWeight.w400,
                    color: Color(0xff4d606f),
                    fontSize: ScreenUtil().setSp(22),
                  ),
                ),
              ),
              IconButton(
                icon: new Icon(Icons.arrow_forward),
                color: Colors.grey,
                onPressed: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }
}
