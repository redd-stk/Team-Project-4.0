import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:teamp_app/components/defaultButton.dart';
import 'package:teamp_app/constants.dart';
import 'package:teamp_app/screens/forgotPasswordSreen/forgotPassword.dart';
import 'package:teamp_app/screens/signUpScreen/signUp.dart';

import '../../../components/errors.dart';
import '../../../components/socMediaIcons.dart';
import '../../../sizeConfig.dart';
import 'signInForm.dart';

class Body extends StatelessWidget {
  const Body({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: getScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                // SizedBox(height: getScreenHeight(65),),
                SizedBox(
                  height: SizeConfig.screenHeight! * 0.05,
                ),
                Text(
                  "Welcome Back",
                  style: TextStyle(
                    // color: Colors.black,
                    color: Color.fromARGB(255, 34, 141, 52),
                    fontSize: getScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Sign In with your email and password",
                  textAlign: TextAlign.center,
                  //style: TextStyle(color: Color.fromARGB(255, 34, 141, 52)),
                ),
                SizedBox(height: SizeConfig.screenHeight! * 0.10),
                SignInForm(),
                SizedBox(height: SizeConfig.screenHeight! * 0.05),

                // SizedBox(height: getScreenHeight(40),),

                Text(
                  "or \nContinue with your social media account",
                  textAlign: TextAlign.center,
                ),
                SizedBox(
                  height: getScreenHeight(20),
                ),

                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    socMediaIcon(
                      icon: "assets/icons/google-icon.svg",
                      pressed: () {},
                    ),
                    socMediaIcon(
                      icon: "assets/icons/facebook-2.svg",
                      pressed: () {},
                    ),
                    socMediaIcon(
                      icon: "assets/icons/twitter.svg",
                      pressed: () {},
                    ),
                  ],
                ),
                SizedBox(
                  height: getScreenHeight(30),
                ),

                NoAccountTxt()
              ],
            ),
          ),
        ),
      ),
    );
  }
}

class NoAccountTxt extends StatelessWidget {
  const NoAccountTxt({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Text(
          "Don't have an account? ",
          style: TextStyle(fontSize: getScreenWidth(14)),
        ),
        GestureDetector(
            onTap:
                () => Navigator.popAndPushNamed(context, SignUpScreen.routeName), 
            child: Text(
              "Sign Up ",
              style: TextStyle(
                  fontSize: getScreenWidth(14), color: appPrimaryColor),
            ))
      ],
    );
  }
}
