import 'package:conreality_app/constants.dart';
import 'package:flutter/material.dart';

import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:form_field_validator/form_field_validator.dart';

class SignUpForm extends StatefulWidget {
  @override
  _SignUpFormState createState() => _SignUpFormState();
}

class _SignUpFormState extends State<SignUpForm> {
  GlobalKey<FormState> _formkey = GlobalKey<FormState>();

  final FocusNode _emailAdresFocus = FocusNode();
  final FocusNode _passwordInpuFocus = FocusNode();

  TextEditingController _emailController = TextEditingController();
  TextEditingController _passwordController = TextEditingController();

  void validate() {
    if (_formkey.currentState.validate()) {
      print("Validated");
    } else {
      print("Not validated");
    }
  }

  String validatepassword(value) {
    if (value.isEmpty) {
      return "Requiered";
    } else if (value.length < 6) {
      return "Should Be At Least 6 characters";
    } else if (value.length > 15) {
      return "Should Not Be More Than 15 Characters";
    } else if (value != "letmeIn123!") {
      return "False Password";
    } else {
      return null;
    }
  }

  @override
  Widget build(BuildContext context) {
    ScreenUtil.init(context, width: 375, height: 812);
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () {
        FocusScope.of(context).requestFocus(
          FocusNode(),
        );
      },
      child: Form(
        autovalidateMode: AutovalidateMode.always,
        key: _formkey,
        child: Scaffold(
          appBar: _buildAppBar(),
          backgroundColor: backgroundSignUpPage,
          body: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(
                  height: ScreenUtil().setHeight(254.08),
                ),
                _buildLabelTextEmail(),
                SizedBox(
                  height: ScreenUtil().setHeight(7),
                ),
                _buildEmail(),
                SizedBox(
                  height: ScreenUtil().setHeight(19.92),
                ),
                _buildLabelTextPassword(),
                SizedBox(
                  height: ScreenUtil().setHeight(7),
                ),
                _buildPassword(),
                SizedBox(
                  height: ScreenUtil().setHeight(106),
                ),
                _signUpButtonBuild(),
                SizedBox(
                  height: ScreenUtil().setHeight(35.47),
                ),
                _builtForgetDetails()
              ],
            ),
          ),
        ),
      ),
    );
  }

  Widget _buildAppBar() {
    return AppBar(
      title: titleOfAppBarSignUp,
      centerTitle: true,
      toolbarHeight: ScreenUtil().setHeight(80),
      backgroundColor: appBarSignUpColor,
    );
  }

  Widget _buildLabelTextEmail() {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 31),
      child: Container(
        width: ScreenUtil().setWidth(312),
        height: ScreenUtil().setHeight(15),
        child: labeltextofEmailSignUpPage,
      ),
    );
  }

  Widget _buildEmail() {
    return Container(
      height: ScreenUtil().setHeight(48),
      width: ScreenUtil().setWidth(312),
      decoration: BoxDecoration(
        color: Color(0xFF4B4646),
        borderRadius: BorderRadius.all(
          Radius.circular(3),
        ),
      ),
      child: TextFormField(
        controller: _emailController,
        keyboardType: TextInputType.emailAddress,
        textInputAction: TextInputAction.next,
        focusNode: _emailAdresFocus,
        onFieldSubmitted: (term) {
          _fieldFocusChange(context, _emailAdresFocus, _passwordInpuFocus);
        },
        decoration: InputDecoration(
          // border: UnderlineInputBorder(),
          errorStyle: TextStyle(fontSize: ScreenUtil().setSp(13), height: 0.1),
        ),
        // validator: (value) {
        //   if (value != "jhacker@example.org") {
        //     return "False Email";
        //   } else {
        //     return null;
        //   }
        // }
      ),
    );
  }

  Widget _buildLabelTextPassword() {
    return Padding(
      padding: const EdgeInsets.only(left: 32, right: 31),
      child: Container(
        width: ScreenUtil().setWidth(312),
        height: ScreenUtil().setHeight(15),
        child: labeltextofPasswordSignUpPage,
      ),
    );
  }

  Widget _buildPassword() {
    return Container(
      height: ScreenUtil().setHeight(48),
      width: ScreenUtil().setWidth(312),
      decoration: BoxDecoration(
        color: Color(0xFF4B4646),
        borderRadius: BorderRadius.all(
          Radius.circular(3),
        ),
      ),
      child: TextFormField(
        controller: _passwordController,
        // obscureText: _obscureText,
        keyboardType: TextInputType.text,
        textInputAction: TextInputAction.done,
        focusNode: _passwordInpuFocus,
        onFieldSubmitted: (value) {
          _passwordInpuFocus.unfocus();
        },
        decoration: InputDecoration(
          errorStyle: TextStyle(fontSize: ScreenUtil().setSp(13), height: 0.1),
        ),
        //validator: validatepassword,
      ),
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
            Navigator.of(context).pushNamed("/arenaBrowser");
          },
          color: signUpSignUpPageColor,
          child: signUpSignUpPageText,
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(3.0)),
        ),
      ),
    );
  }

  Widget _builtForgetDetails() {
    return Padding(
      padding: const EdgeInsets.only(left: 48.23, right: 53.63),
      child: Container(
        width: ScreenUtil().setWidth(273.14),
        height: ScreenUtil().setHeight(31.21),
        child: FlatButton(
          onPressed: () {},
          child: forgotPasswordSignUpPageText,
        ),
      ),
    );
  }

  _fieldFocusChange(
      BuildContext context, FocusNode currentFocus, FocusNode nextFocus) {
    currentFocus.unfocus();
    FocusScope.of(context).requestFocus(nextFocus);
  }
}
