// ignore_for_file: prefer_const_constructors
import 'package:auth1/constants.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SignIn extends StatelessWidget {
  const SignIn({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Expanded(
            flex: 3,
            child: Container(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: AssetImage("./assets/images/person.jpg"),
                  fit: BoxFit.cover,
                  alignment: Alignment.bottomCenter,
                ),
              ),
            ),
          ),
          Expanded(
            flex: 4,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        "SIGN IN",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      Text(
                        "SIGN UP",
                        style: Theme.of(context).textTheme.button,
                      ),
                    ],
                  ),
                  Spacer(),
                  Padding(
                    padding: EdgeInsets.only(bottom: 30),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      // ignore: prefer_const_literals_to_create_immutables
                      children: [
                        Padding(
                          padding: EdgeInsets.only(right: 16),
                          child: FaIcon(
                            FontAwesomeIcons.at,
                            color: kPrimaryColor,
                          ),
                        ),
                        Expanded(
                          child: TextField(
                            decoration: InputDecoration(
                              hintText: "E-Mail Address",
                            ),
                            obscureText: true,
                          ),
                        )
                      ],
                    ),
                  ),
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    // ignore: prefer_const_literals_to_create_immutables
                    children: [
                      Padding(
                        padding: EdgeInsets.only(right: 16),
                        child: FaIcon(
                          FontAwesomeIcons.lock,
                          color: kPrimaryColor,
                        ),
                      ),
                      Expanded(
                        child: TextField(
                          decoration: InputDecoration(
                            hintText: "Password",
                          ),
                        ),
                      )
                    ],
                  ),
                  Spacer(),
                  Row(
                    children: [
                      Container(
                        //margin: EdgeInsets.only(bottom: 25),
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white.withOpacity(.5),
                          ),
                        ),
                        child: FaIcon(
                          FontAwesomeIcons.android,
                          color: Colors.white.withOpacity(.5),
                        ),
                      ),
                      SizedBox(width: 20),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Colors.white.withOpacity(.5),
                          ),
                        ),
                        child: FaIcon(
                          FontAwesomeIcons.facebookMessenger,
                          color: Colors.white.withOpacity(.5),
                        ),
                      ),
                      Spacer(),
                      Container(
                        padding: EdgeInsets.all(16),
                        decoration: BoxDecoration(
                          color: kPrimaryColor,
                          shape: BoxShape.circle,
                        ),
                        child: FaIcon(
                          FontAwesomeIcons.arrowRight,
                          color: Colors.black,
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
