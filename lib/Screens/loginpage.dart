import 'package:flutter/material.dart';
import 'package:practice/Widgets/custombutton.dart';
import 'package:practice/Widgets/customtextfield.dart';
import 'package:practice/Widgets/roundedbutton.dart';
import 'package:practice/custom_theme.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "LOGIN",
        ),
        backgroundColor: CustomTheme.primaryColors,
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: 30,
          ),
          Container(
            child: Text(
              "Login",
              style: TextStyle(fontSize: 50, fontWeight: FontWeight.bold),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hinter: "Enter your username",
            title: "Username",
            prefixIcon: Icons.person,
          ),
          SizedBox(
            height: 20,
          ),
          CustomTextField(
            hinter: "Type your password",
            title: "Password",
            prefixIcon: Icons.lock,
          ),
          SizedBox(
            height: 5,
          ),
          Container(
            alignment: Alignment.topRight,
            padding:
                EdgeInsets.symmetric(horizontal: CustomTheme.commonPadding),
            child: Text(
              "Forgot password?",
              style: TextStyle(fontSize: 12, color: CustomTheme.LightGrey),
            ),
          ),
          SizedBox(
            height: 40,
          ),
          Container(
            child: CustomButton(
              title: "LOGIN",
              onPressed: () {
                print("LOGIN PRESSED");
              },
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Text("or sign up using"),
          SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              RoundedButton(icond: Icons.facebook, bgColor: Colors.blue),
              SizedBox(
                width: 10,
              ),
              RoundedButton(icond: Icons.search, bgColor: Colors.red)
            ],
          ),
          SizedBox(
            height: 40,
          ),
          Text(
            "SIGN UP",
            style: TextStyle(
                fontStyle: FontStyle.italic, color: CustomTheme.LightGrey),
          )
        ],
      ),
    );
  }
}
