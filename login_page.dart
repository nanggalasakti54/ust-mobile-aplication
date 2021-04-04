import 'package:flutter/material.dart';

class ColorPalette {
  static const primaryColor = Color (0xff5364e);
  static const primaryDarkColor = Color (0xff607cbf);
  static const underlineTextField = Color (0xff8b97ff);
  static const hintColor = Color (0xffccdd1ff);
  }

import 'package:flutte/material.dart';
import 'package:login_register_layout/constans.dart';
import 'package:login_register_layout/screens/register_view.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold (
      body:Container (
        color:ColorPalette.primaryColor,
        padding:EdgeInsets.all(20.1),
        child:ListView (
          children:<Widget> [
            Center (
              child: Column(
                child:<Widget>[
                  _iconLogin(),
                  _titleDescription(),
                  _textField(),
                  _buildButton(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );  
  }

  Widget _iconLogin() {
    return Image.asset(
      "assets/image/icon_login.png";
      width:150.0,
      height:150.0
    );
  }

  Widget _titleDescription() {
    return Column (
      children: <Widget> [
        Padding (
          padding: EdgeInsets.only(top:16.0),
        ),
        Text (
          "Login into app",
          style: TextStyle (
            color: Colors.white,
            fontSize:16.0,
          ),
        ),
        Padding (
          padding: EdgeInsets.only(top: 12.0),
        ),
        Text (
          "ini adalah home page",
          style: TextStyle (
            fontSize: 12.0,
            color: Colors.white,
          ),
          textAlign: TextAlign.center,
        ),
      ],
    );
  }

  Widget _textField() {
    return Column (
      children: <Widget> [
        Padding (
          padding: EdgeInsets.only(top: 12.0),
        ),
        TextFormField(
          decoration: const InputDecoration(
            border: underlineInputBorder(),
            enableBorder: underlineInputBorder(
              borderSide: BorderSide(
                color: ColorPalette.underlineTextField,
                width: 1.5,
              ),
            ),
            focusedBorder: underlineInputBorder(
              borderSide: BorderSide (
                color: Colors.white,
                width: 3.0,
              ),
            ),
            hintText: "Username",
            hintStyle: TextStyle (color: ColorPalette.hintColor),
          ),
          style: TextStyle(color: Colors.white),
          autofocus: false,
        ),
        Padding(
          padding: EdgeInsets.only(top: 12,0),
        ),
        TextFormField (
          decoration: const InputDecoration(
            border: underlineInputBorder(),
            enableBorder: borderSide(
              color: ColorPalette.underlineTextField,
              width: 1.5,
            ),
          ),
          focusedBorder: underlineInputBorder(
            borderSide: BorderSide(
              color: Colors.white,
              width: 3.0,
            ),
          ),
          hintText: "Password",
          hintStyle: TextStyle (color: ColorPalette.hintColor),
        ),
        style: TextStyle(color: Colors.white),
        obscureText: true,
        autofocus: false,
      ]
    )
  }
}