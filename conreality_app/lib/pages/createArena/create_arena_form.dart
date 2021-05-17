import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/screenutil.dart';

import '../../constants.dart';
import 'googleMap/google_maps_page.dart';

class CreateArenaForm extends StatefulWidget {
  CreateArenaForm({Key key}) : super(key: key);

  @override
  _CreateArenaFormState createState() => _CreateArenaFormState();
}

class _CreateArenaFormState extends State<CreateArenaForm> {
  final FocusNode _emailAdresFocus = FocusNode();
  final FocusNode _passwordInpuFocus = FocusNode();
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).requestFocus(
          FocusNode(),
        );
      },
      child: Scaffold(
        backgroundColor: Color(0xFF2B2B2B),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Container(
                width: ScreenUtil().setWidth(375),
                height: ScreenUtil().setHeight(48),
                color: Colors.grey,
              ),
              Container(
                width: ScreenUtil().setWidth(375),
                height: ScreenUtil().setHeight(55.15),
                color: Color(0xFF2B2B2B),
                child: Row(
                  children: [
                    SizedBox(
                      width: ScreenUtil().setWidth(21),
                    ),
                    Container(
                        width: ScreenUtil().setWidth(14),
                        height: ScreenUtil().setHeight(14),
                        child: Icon(
                          Icons.close,
                          color: Colors.white,
                        )),
                    SizedBox(
                      width: ScreenUtil().setWidth(225.2),
                    ),
                    InkWell(
                      onTap: () {},
                      child: Container(
                        width: ScreenUtil().setWidth(97),
                        height: ScreenUtil().setHeight(36),
                        decoration: BoxDecoration(
                          color: Color(0xFF989898),
                          borderRadius: BorderRadius.all(Radius.circular(3.0)),
                        ),
                        child: Padding(
                          padding: const EdgeInsets.only(
                              left: 7, top: 6, bottom: 6, right: 12),
                          child: Container(
                            width: ScreenUtil().setWidth(78),
                            height: ScreenUtil().setHeight(24),
                            child: Row(children: [
                              Container(
                                width: ScreenUtil().setWidth(24),
                                height: ScreenUtil().setHeight(24),
                                child: Icon(
                                  Icons.add,
                                  color: Colors.white,
                                ),
                              ),
                              SizedBox(
                                width: ScreenUtil().setWidth(5),
                              ),
                              Container(
                                width: ScreenUtil().setWidth(49),
                                height: ScreenUtil().setHeight(14),
                                child: Text(
                                  "CREATE",
                                  style: TextStyle(color: Colors.white),
                                ),
                              ),
                            ]),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Row(
                children: [
                  SizedBox(
                    width: ScreenUtil().setWidth(61),
                  ),
                  Container(
                    width: ScreenUtil().setWidth(96),
                    height: ScreenUtil().setHeight(20),
                    child: Text(
                      '*required to fill',
                      style: TextStyle(color: Colors.white),
                    ),
                  ),
                ],
              ),
              Padding(
                padding: EdgeInsets.only(
                  left: ScreenUtil().setWidth(16.03),
                  right: ScreenUtil().setWidth(14.97),
                ),
                child: Container(
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: UnderlineInputBorder(),
                      hintText: '*Add arena name',
                      contentPadding: EdgeInsets.only(
                        left: ScreenUtil().setWidth(46.03),
                      ),
                      hintStyle: TextStyle(
                        fontWeight: FontWeight.normal,
                        fontSize: ScreenUtil().setSp(22),
                        color: Colors.white,
                        height: ScreenUtil().setHeight(1.3),
                      ),
                    ),
                  ),
                ),
              ),
              RaisedButton(
                  color: Color(0xFF2B2B2B),
                  onPressed: () => {
                        Navigator.pushNamed(context, "/HomePageGoogleMaps"),
                      },
                  child: _buildAddLocation()),
              // _buildDivider(),
              RaisedButton(
                  color: Color(0xFF2B2B2B),
                  onPressed: () => {},
                  child: _buildGameTime()),
              // _buildDivider(),
              RaisedButton(
                  color: Color(0xFF2B2B2B),
                  onPressed: () => {},
                  child: _buildAddAPhotoCover()), // _buildDivider(),
              RaisedButton(
                  color: Color(0xFF2B2B2B),
                  onPressed: () => {},
                  child: _buildInvitePeople()),
              // _buildDivider(),
              RaisedButton(
                  color: Color(0xFF2B2B2B),
                  onPressed: () => {},
                  child: _buildAirSoftLviv()),
              // _buildDivider(),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildDivider() {
    return Divider(
      indent: ScreenUtil().setWidth(14.97),
      endIndent: ScreenUtil().setWidth(16.03),
      thickness: 1,
      //  height: ScreenUtil().setHeight(1),
      color: Color(0xFF361B1B),
    );
  }

  Widget _buildAddLocation() {
    return Container(
      height: ScreenUtil().setHeight(70),
      child: Padding(
        padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(16.03),
          right: ScreenUtil().setWidth(14.97),
        ),
        child: Container(
          child: Row(
            children: [
              Container(
                height: ScreenUtil().setHeight(38),
                width: ScreenUtil().setWidth(36),
                child: Icon(
                  Icons.location_on_outlined,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(7.72),
              ),
              Container(
                height: ScreenUtil().setHeight(21),
                width: ScreenUtil().setWidth(169),
                child: Text(
                  "*Add meeting location",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: ScreenUtil().setSp(16),
                    color: Colors.white,
                    height: ScreenUtil().setHeight(1.3),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildGameTime() {
    return Container(
      height: ScreenUtil().setHeight(70),
      child: Padding(
        padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(16.03),
          right: ScreenUtil().setWidth(14.97),
        ),
        child: Container(
          child: Row(
            children: [
              Container(
                height: ScreenUtil().setHeight(38),
                width: ScreenUtil().setWidth(36),
                child: Icon(
                  Icons.access_time,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(7.72),
              ),
              Container(
                height: ScreenUtil().setHeight(21),
                width: ScreenUtil().setWidth(169),
                child: Text(
                  "*Add game time",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: ScreenUtil().setSp(16),
                    color: Colors.white,
                    height: ScreenUtil().setHeight(1.3),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAddAPhotoCover() {
    return Container(
      height: ScreenUtil().setHeight(70),
      child: Padding(
        padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(16.03),
          right: ScreenUtil().setWidth(14.97),
        ),
        child: Container(
          child: Row(
            children: [
              Container(
                height: ScreenUtil().setHeight(38),
                width: ScreenUtil().setWidth(36),
                child: Icon(
                  Icons.photo_camera,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(7.72),
              ),
              Container(
                height: ScreenUtil().setHeight(21),
                width: ScreenUtil().setWidth(169),
                child: Text(
                  "*Add a photo cover",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: ScreenUtil().setSp(16),
                    color: Colors.white,
                    height: ScreenUtil().setHeight(1.3),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildInvitePeople() {
    return Container(
      height: ScreenUtil().setHeight(70),
      child: Padding(
        padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(16.03),
          right: ScreenUtil().setWidth(14.97),
        ),
        child: Container(
          child: Row(
            children: [
              Container(
                height: ScreenUtil().setHeight(38),
                width: ScreenUtil().setWidth(36),
                child: Icon(
                  Icons.person_add_alt_1_outlined,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(7.72),
              ),
              Container(
                height: ScreenUtil().setHeight(21),
                width: ScreenUtil().setWidth(169),
                child: Text(
                  "*Invite people",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: ScreenUtil().setSp(16),
                    color: Colors.white,
                    height: ScreenUtil().setHeight(1.3),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget _buildAirSoftLviv() {
    return Container(
      height: ScreenUtil().setHeight(70),
      child: Padding(
        padding: EdgeInsets.only(
          left: ScreenUtil().setWidth(16.03),
          right: ScreenUtil().setWidth(14.97),
        ),
        child: Container(
          child: Row(
            children: [
              Container(
                height: ScreenUtil().setHeight(38),
                width: ScreenUtil().setWidth(36),
                child: Icon(
                  Icons.person_add,
                  color: Colors.white,
                ),
              ),
              SizedBox(
                width: ScreenUtil().setWidth(7.72),
              ),
              Container(
                height: ScreenUtil().setHeight(21),
                width: ScreenUtil().setWidth(169),
                child: Text(
                  "*Ait Soft Lviv (@airsoft_lviv)",
                  style: TextStyle(
                    fontWeight: FontWeight.w400,
                    fontSize: ScreenUtil().setSp(16),
                    color: Colors.white,
                    height: ScreenUtil().setHeight(1.3),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
