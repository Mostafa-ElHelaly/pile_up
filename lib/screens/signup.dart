import 'package:flutter/material.dart';
import 'package:pile_up/models/button.dart';
import 'package:pile_up/models/textfield.dart';
import 'package:pile_up/screens/home.dart';
import 'package:pile_up/screens/login.dart';
import 'package:pile_up/screens/terms-conditions.dart';
import 'package:pile_up/screens/welcomscr1.dart';
import '../models/assets.dart';
import '../models/textbox.dart';

class signup extends StatefulWidget {
  const signup({super.key});

  @override
  State<signup> createState() => _signupState();
}

bool isVisible = true;

class _signupState extends State<signup> {
  bool checkBoxValue = false;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
      body: Center(
        child: SingleChildScrollView(
          child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
            Image.asset(
              AssetPath.logo,
              height: 150,
            ),
            SizedBox(
              height: height * 0.01,
            ),

            //text
            const textbox(
                text: 'Welcome',
                color: Color.fromRGBO(77, 80, 92, 1),
                fontSize: 20,
                fontWeight: FontWeight.bold),

            const textbox(
                text: 'Sign Up to continue',
                color: Color.fromRGBO(77, 80, 92, 1),
                fontSize: 14),

            SizedBox(
              height: height * 0.03,
            ),

            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                      padding: EdgeInsets.only(left: 5),
                      child: textbox(
                          text: 'First Name',
                          color: Color.fromRGBO(77, 80, 92, 1),
                          fontSize: 14,
                          fontWeight: FontWeight.w700),
                    ),
                    SizedBox(
                        width: width * 45 / 100,
                        height: height * 0.048,
                        child: TextFields()),
                  ],
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: textbox(
                            text: 'Last Name',
                            color: Color.fromRGBO(77, 80, 92, 1),
                            fontSize: 14,
                            fontWeight: FontWeight.w700)),
                    SizedBox(
                        width: width * 45 / 100,
                        height: height * 0.048,
                        child: const Padding(
                          padding: EdgeInsets.only(
                            left: 10,
                          ),
                          child: TextFields(),
                        )),
                  ],
                )
              ],
            ),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: textbox(
                      text: 'Mobile Number',
                      color: Color.fromRGBO(77, 80, 92, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w700)),
            ),

            SizedBox(
                width: width * 90 / 100,
                height: height * 0.07,
                child: const TextFields()),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: textbox(
                      text: 'E-Mail Address',
                      color: Color.fromRGBO(77, 80, 92, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w700)),
            ),

            SizedBox(
                width: width * 90 / 100,
                height: height * 0.07,
                child: const TextFields()),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                  alignment: Alignment.topLeft,
                  child: textbox(
                      text: 'Password',
                      color: Color.fromRGBO(77, 80, 92, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w700)),
            ),

            SizedBox(
              width: width * 90 / 100,
              height: height * 0.07,
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: TextFields(
                  obscureText: true,
                  sIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 10),
                    child: InkWell(
                        onTap: () {
                          setState(() {
                            isVisible = !isVisible;
                          });
                        },
                        child: Icon(isVisible
                            ? Icons.visibility_off_outlined
                            : Icons.visibility_outlined)),
                  ),
                  pIcon: Image.asset(
                    AssetPath.lockIcon,
                    scale: 3,
                  ),
                ),
              ),
            ),

            Padding(
              padding: const EdgeInsets.only(left: 12),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  Checkbox(
                    shape: const CircleBorder(),
                    activeColor: Colors.deepOrangeAccent,
                    value: checkBoxValue,
                    onChanged: (bool? newValue) {
                      setState(() {
                        checkBoxValue = newValue!;
                      });
                    },
                  ),
                  const textbox(
                      text: 'I agree to ',
                      color: Color.fromRGBO(77, 80, 92, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                  MainButton(
                      text: 'Privacy Policy',
                      textColor: Colors.deepOrangeAccent,
                      textSize: 15,
                      onTap:
                          () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) {
                              return const termsCond();
                            },
                          ),
                        );
                      },
                      textUnderLine: TextDecoration.underline,
                      textUnderLineColor: Colors.deepOrangeAccent),
                  const textbox(
                      text: ' and ',
                      color: Color.fromRGBO(77, 80, 92, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                  MainButton(
                      text: 'Terms of Use',
                      textColor: Colors.deepOrangeAccent,
                      textSize: 15,
                      onTap:
                        () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const termsCond();
                              },
                            ),
                          );
                      },
                      textUnderLine: TextDecoration.underline,
                      textUnderLineColor: Colors.deepOrangeAccent),
                ],
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(10)),
                child: Center(
                    child: MainButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return welcomeScr1();
                        },
                      ),
                    );
                  },
                  text: 'SIGN UP',
                  textColor: Colors.white,
                  textSize: 18,
                  backgroundColor: Colors.deepOrangeAccent,
                )),
              ),
            ),

            SizedBox(
              height: height * 0.02,
            ),
            const textbox(
                text: 'Or sign in With',
                color: Color.fromRGBO(77, 80, 92, 1),
                fontSize: 14,
                fontWeight: FontWeight.w700),

            SizedBox(
              height: height * 0.01,
            ),
            Column(children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset(
                      AssetPath.google,
                      scale: 3,
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset(AssetPath.facebook, scale: 3),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset(AssetPath.apple, scale: 3),
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 20),
                    child: Image.asset(AssetPath.x, scale: 3),
                  ),
                ],
              ),
              SizedBox(
                height: height * 0.01,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const textbox(
                      text: 'Already have an acount? ',
                      color: Color.fromRGBO(77, 80, 92, 1),
                      fontSize: 14,
                      fontWeight: FontWeight.w700),
                  Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: MainButton(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const login();
                              },
                            ),
                          );
                        },
                        text: 'Login',
                        textColor: Colors.deepOrangeAccent,
                        textSize: 15,
                        textUnderLine: TextDecoration.underline,
                        textUnderLineColor: Colors.deepOrangeAccent,
                      ))
                ],
              )
            ]),
          ]),
        ),
      ),
    );
  }
}
