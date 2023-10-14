import 'package:flutter/material.dart';
import 'package:flutter_cartapp/view/loginScreen.dart';
import 'package:flutter_cartapp/view/signUpScreen.dart';
import 'package:flutter_cartapp/widget/backgroundwidget.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatefulWidget {
  const WelcomeScreen({super.key});

  @override
  State<WelcomeScreen> createState() => _WelcomeScreenState();
}

class _WelcomeScreenState extends State<WelcomeScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(4, 0, 0, 0),
      body: Container(
        child: Column(
          children: [
            BackgroundWidget(
              child: Column(children: [
                SizedBox(
                  height: 120,
                ),
                Text(
                  "Welcome to Login",
                  style: TextStyle(
                      fontSize: 24,
                      color: Colors.white,
                      fontWeight: FontWeight.w700),
                ),
                Image.asset(
                  "lib/images/undraw_Balloons.png",
                  height: MediaQuery.of(context).size.height * .35,
                ),
                SizedBox(
                  height: 28,
                ),
                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * .9,
                  color: Colors.purple,
                  height: MediaQuery.of(context).size.height / 16,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22)),
                  onPressed: () {
                    Get.to(LoginScreen());
                  },
                  child: Text(
                    "LOGIN",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                ),
                SizedBox(
                  height: 18,
                ),
                MaterialButton(
                  minWidth: MediaQuery.of(context).size.width * .9,
                  height: MediaQuery.of(context).size.height / 16,
                  color: const Color.fromARGB(255, 136, 125, 138),
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(22)),
                  onPressed: () {
                    Get.to(SignUpScreen());
                  },
                  child: Text(
                    "SIGN UP",
                    style: TextStyle(fontSize: 20, color: Colors.black),
                  ),
                ),
              ]),
            ),
          ],
        ),
      ),
    );
  }
}
