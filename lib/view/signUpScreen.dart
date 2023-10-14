import 'package:flutter/material.dart';
import 'package:flutter_cartapp/widget/backgroundwidget.dart';
import 'package:flutter_cartapp/widget/textformwidget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/get_core.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

final _formKey = GlobalKey();
TextEditingController nameController = TextEditingController();

TextEditingController emailController = TextEditingController();

TextEditingController numberController = TextEditingController();

TextEditingController passwordController = TextEditingController();

TextEditingController cPasswordController = TextEditingController();

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(0, 0, 0, 0),
      body: BackgroundWidget(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset(
                "lib/images/signup2.png",
                height: MediaQuery.of(context).size.height * .25,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: [
                    TextFormWidget(
                      onController: nameController,
                      text: 'Enter Name',
                      iconData: Icons.person,
                    ),
                    TextFormWidget(
                        onController: emailController,
                        text: "Enter Email id",
                        iconData: Icons.email),
                    TextFormWidget(
                        onController: numberController,
                        text: "Enter No.",
                        iconData: Icons.phone_forwarded_outlined),
                    TextFormWidget(
                      onController: passwordController,
                      text: 'Enter Password',
                      iconData: Icons.lock_outline,
                    ),
                    TextFormWidget(
                      onController: cPasswordController,
                      text: 'Re-Enter Password',
                      iconData: Icons.lock_outline,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    MaterialButton(
                      minWidth: MediaQuery.of(context).size.width * .9,
                      height: 55,
                      color: Colors.purple,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(22)),
                      onPressed: () {},
                      child: Text("Sign Up"),
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Text(
                          "Already have an account?",
                          style: TextStyle(
                              color: Colors.grey, fontWeight: FontWeight.w600),
                        ),
                        TextButton(
                            onPressed: () {
                              Get.back();
                            },
                            child: Text(
                              "Login Now",
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ))
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      )),
    );
  }
}
