import 'package:dock_man/components/already_have_an_account_acheck.dart';
import 'package:dock_man/components/rounded_button.dart';
import 'package:dock_man/screens/Login/components/background.dart';
import 'package:dock_man/screens/Signup/signup_screen.dart';
import 'package:dock_man/screens/home/home.dart';
import 'package:flutter/material.dart';

class Body extends StatelessWidget {
  const Body({
    Key key,
  }) : super(key: key);

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
                "LOGIN",
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 25,
                ),
              ),
              SizedBox(height: size.height * 0.03),
              Image.asset(
                "assets/icons/dock.gif",
                height: size.height * 0.35,
              ),
              SizedBox(height: size.height * 0.03),
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
              Container(
                child: Card(
                  child: TextField(
                    keyboardType: TextInputType.emailAddress,
                    decoration: InputDecoration(
                      labelText: "Enter Password",
                      border: OutlineInputBorder(),
                      prefixIcon: Icon(Icons.lock),
                    ),
                    onChanged: (value) {},
                  ),
                ),
              ),
              RoundedButton(
                text: "LOGIN",
                press: () => Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => Home(),
                  ),
                ),
              ),
              SizedBox(height: size.height * 0.03),
              AlreadyHaveAnAccountCheck(
                press: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return SignUpScreen();
                      },
                    ),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
