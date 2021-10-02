// ignore_for_file: prefer_const_constructors

import 'package:auth1/constants.dart';
import 'package:auth1/signin.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class WelcomeScreen extends StatelessWidget {
  const WelcomeScreen({Key? key}) : super(key: key);

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
                  image: AssetImage(
                    "./assets/images/person.jpg",
                  ),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                RichText(
                  textAlign: TextAlign.center,
                  text: TextSpan(
                    children: [
                      TextSpan(
                        text: "BAKING LESSONS\n",
                        style: Theme.of(context).textTheme.headline5,
                      ),
                      TextSpan(
                        text: "MASTER THE ART OF BAKING",
                        style: Theme.of(context).textTheme.headline6,
                      ),
                    ],
                  ),
                ),
                FittedBox(
                  child: GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return SignIn();
                          },
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.only(bottom: 25),
                      padding:
                          EdgeInsets.symmetric(vertical: 16, horizontal: 26),
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(25),
                        color: kPrimaryColor,
                      ),
                      child: Row(
                        children: [
                          Text(
                            "START LEARNING",
                            style: Theme.of(context).textTheme.button,
                          ),
                          SizedBox(
                            width: 10,
                          ),
                          FaIcon(FontAwesomeIcons.arrowRight)
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
