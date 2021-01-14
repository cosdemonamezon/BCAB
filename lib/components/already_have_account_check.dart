import 'package:BCAB/constants.dart';
import 'package:flutter/material.dart';

class AlreadyHaveAccountCheck extends StatelessWidget {
  final bool login;
  final Function press;
  const AlreadyHaveAccountCheck({
    Key key,
    this.login = true,
    this.press,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: <Widget>[
        Text(
          login ? "Dont't have an Account ? " : "Already have an Account ? ",
          //"Dont't have an Account ",
          style: TextStyle(color: kBtn, fontSize: 18.0),
        ),
        GestureDetector(
          onTap: press,
          //onTap: (){},
          child: Text(
            //login ? "Sing Up" : "Sing In",
            "Register",
            style: TextStyle(
              color: kBtn,
              fontWeight: FontWeight.bold,
              fontSize: 18.0,
            ),
          ),
        ),
      ],
    );
  }
}
