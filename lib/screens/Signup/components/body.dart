import 'package:dock_man/components/already_have_an_account_acheck.dart';
import 'package:dock_man/components/rounded_button.dart';
import 'package:dock_man/screens/Login/login_screen.dart';
import 'package:dock_man/screens/Signup/components/background.dart';
import 'package:dock_man/screens/Signup/components/or_divider.dart';
import 'package:dock_man/screens/Signup/components/social_icon.dart';
import 'package:dock_man/screens/home/home.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: SingleChildScrollView(
        child: Container(
          margin: EdgeInsets.only(left: 15, right: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Text(
                "SIGNUP",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Image.asset(
                "assets/icons/dock.gif",
                height: size.height * 0.25,
              ),
              SizedBox(height: size.height * 0.02),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Enter Email",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.person),
                ),
                onChanged: (value) {},
              ),
              SizedBox(height: size.height * 0.01),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Enter Password",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.lock),
                ),
                onChanged: (value) {},
              ),
              SizedBox(height: size.height * 0.01),
              TextField(
                keyboardType: TextInputType.emailAddress,
                decoration: InputDecoration(
                  labelText: "Enter IP",
                  border: OutlineInputBorder(),
                  prefixIcon: Icon(Icons.network_check),
                ),
                onChanged: (value) {},
              ),
              RoundedButton(
                text: "SIGNUP",
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                login: false,
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return LoginScreen();
                      },
                    ),
                  );
                },
              ),
              OrDivider(),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  SocalIcon(
                    iconSrc: "assets/icons/facebook.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/twitter.svg",
                    press: () {},
                  ),
                  SocalIcon(
                    iconSrc: "assets/icons/google-plus.svg",
                    press: () {},
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
