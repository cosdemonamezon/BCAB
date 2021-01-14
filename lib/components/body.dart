import 'dart:ui';
import 'dart:async';

import 'package:BCAB/components/already_have_account_check.dart';
import 'package:BCAB/components/background.dart';
import 'package:BCAB/components/input_text_field.dart';
import 'package:BCAB/components/password_field.dart';
import 'package:BCAB/components/rounded_button.dart';
import 'package:BCAB/constants.dart';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:flutter/services.dart';
import 'package:BCAB/dashboard_tap.dart';

class Body extends StatefulWidget {
  const Body({
    Key key,
  }) : super(key: key);

  @override
  _BodyState createState() => _BodyState();
}

class _BodyState extends State<Body> {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "",
                style: TextStyle(fontWeight: FontWeight.bold, color: kBtn),
              ),
            ),
            Image.asset(
              "assets/background.png",
              height: size.height * 0.37,
            ),
            InputTextField(
              hintText: "Input your phone number",
              onChanged: (value) {},
            ),
            //TextField(),
            PasswordField(
              onChanged: (value) {},
            ),
            RoundedButton(
              text: "Sign In",
              press: () {
                Navigator.pop(context);
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => Dashboard()));
              },
            ),
            AlreadyHaveAccountCheck(
              press: () {},
            ),
            SizedBox(
              height: 25.0,
            ),
            Center(
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Quick login with Touch ID",
                        style:
                            TextStyle(color: kBtn, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        CircleAvatar(
                          backgroundImage: AssetImage("assets/fingerprint.jpg"),
                          radius: 25.0,
                          child: GestureDetector(
                            onTap: () {},
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Touch ID",
                        style:
                            TextStyle(color: kBtn, fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
