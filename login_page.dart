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
      widht:150.0,
      height:150.0
    );
  }

  Widget _titleDescription() {
    return Column (
      children: <Widget> [
        Padding (
          padding: EdgeInsets.only(top:16.0)
        )
      ]
    )
  }
}