import 'package:flutter/material.dart';
 import 'package:flutter_cartapp/view/welcomscreen.dart';
import 'package:flutter_cartapp/widget/backgroundwidget.dart';
import 'package:get/get.dart';
import 'package:get/get_core/src/get_main.dart';

class LoginScreen extends StatefulWidget {
  LoginScreen({super.key});

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

bool isVisible = false;

final _formKey = GlobalKey<FormState>();
TextEditingController userController = TextEditingController();
TextEditingController passwordController = TextEditingController();

class _LoginScreenState extends State<LoginScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color.fromARGB(4, 0, 0, 0),
      body: BackgroundWidget(
          child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Image.asset("lib/images/Login.png"),
              Text(
                "LOGIN",
                style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.w600),
              ),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Form(
                    key: _formKey,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        TextFormField(
                          controller: userController,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return "User id Error text";
                            } else {
                              return null;
                            }
                          },
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.person,
                                color: Colors.purple,
                              ),
                              hintText: "Email Id",
                              hintStyle: TextStyle(color: Colors.purple),
                              fillColor: Color.fromARGB(202, 170, 242, 247),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(26))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        TextFormField(
                          controller: passwordController,
                          obscureText: isVisible ? true : false,
                          decoration: InputDecoration(
                              prefixIcon: Icon(
                                Icons.lock_open_rounded,
                                color: Colors.purple,
                              ),
                              suffixIcon: IconButton(
                                icon: isVisible
                                    ? Icon(Icons.visibility)
                                    : Icon(Icons.visibility_off),
                                onPressed: () {
                                  setState(() {
                                    isVisible = !isVisible;
                                  });
                                },
                                color: Colors.purple,
                              ),
                              hintText: "Password",
                              hintStyle: TextStyle(color: Colors.purple),
                              fillColor: Color.fromARGB(202, 170, 242, 247),
                              filled: true,
                              border: OutlineInputBorder(
                                  borderRadius: BorderRadius.circular(26))),
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        MaterialButton(
                          color: Colors.purple,
                          minWidth: double.infinity,
                          height: 55,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(22)),
                          onPressed: () {},
                          child: Text(
                            "LOGIN",
                            style: TextStyle(fontSize: 20, color: Colors.white),
                          ),
                        )
                      ],
                    )),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    "Do you have an account?",
                    style: TextStyle(
                        fontWeight: FontWeight.w600,
                        color: Color.fromARGB(255, 157, 156, 156)),
                  ),
                  SizedBox(
                    width: 3,
                  ),
                  TextButton(
                      onPressed: () { Get.to(WelcomeScreen());},
                      child: Text(
                        "Sign up",
                        style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w600,
                            color: Colors.blue),
                      ))
                ],
              ),
            ],
          ),
        ),
      )),
    );
  }
}
