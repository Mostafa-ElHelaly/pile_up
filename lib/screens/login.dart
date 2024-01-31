import 'package:flutter/material.dart';
import 'package:pile_up/models/button.dart';
import 'package:pile_up/models/textbox.dart';
import 'package:pile_up/screens/home.dart';
import 'package:pile_up/screens/resetpassword.dart';
import 'package:pile_up/screens/signup.dart';
import '../models/assets.dart';
import '../models/textfield.dart';

class login extends StatefulWidget {
  const login({super.key});

  @override
  State<login> createState() => _loginState();
}

class _loginState extends State<login> {
  bool isVisible = true;

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
              height: 120,
            ),
            SizedBox(
              height: height * 0.05,
            ),
            //text
            const textbox(
              text: 'Welcome',
              color: Color.fromRGBO(77, 80, 92, 1),
              fontSize: 20,
              fontWeight: FontWeight.bold,
            ),

            textbox(
              text: 'Login to continue',
              color: Color.fromRGBO(77, 80, 92, 1),
              fontSize: 14,
            ),

            SizedBox(
              height: height * 0.03,
            ),

            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: textbox(
                    text: 'E-Mail Address',
                    color: Color.fromRGBO(77, 80, 92, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: TextFields(
                  pIcon: Image.asset(
                    AssetPath.emailIcon,
                    scale: 3,
                  ),
                ),
              ),
            ),

            SizedBox(
              height: height * 0.01,
            ),

            //text2
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 30),
              child: Align(
                alignment: Alignment.topLeft,
                child: textbox(
                    text: 'Password',
                    color: Color.fromRGBO(77, 80, 92, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(5)),
                child: TextFields(
                  obscureText: isVisible,
                  sIcon: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
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
              padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 10),
              child: Align(
                  alignment: Alignment.topRight,
                  child: MainButton(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) {
                            return resetPassword();
                          },
                        ),
                      );
                    },
                    text: 'Forget Password?',
                    textColor: Colors.deepOrangeAccent,
                    textSize: 15,
                    textUnderLine: TextDecoration.underline,
                    textUnderLineColor: Colors.deepOrangeAccent,
                  )),
            ),

            //button

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 25),
              child: Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                    color: Colors.deepOrangeAccent,
                    borderRadius: BorderRadius.circular(5)),
                child: Center(
                    child: MainButton(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                        builder: (context) {
                          return const home();
                        },
                      ),
                    );
                  },
                  text: 'LOG IN',
                  textColor: Colors.white,
                  textSize: 18,
                  backgroundColor: Colors.deepOrangeAccent,
                )),
              ),
            ),

            SizedBox(
              height: height * 0.15,
            ),
            const textbox(
                text: 'Or sign in With',
                color: Color.fromRGBO(77, 80, 92, 1),
                fontSize: 14,
                fontWeight: FontWeight.w500),

            SizedBox(
              height: height * 0.02,
            ),
            Column(
              children: [
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
                  height: height * 0.02,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const textbox(
                        text: "Don't have account?",
                        color: Color.fromRGBO(77, 80, 92, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: MainButton(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) {
                                return const signup();
                              },
                            ),
                          );
                        },
                        text: 'Sing Up',
                        textColor: Colors.deepOrangeAccent,
                        textSize: 15,
                        textUnderLine: TextDecoration.underline,
                        textUnderLineColor: Colors.deepOrangeAccent,
                      ),
                    ),
                  ],
                )
              ],
            ),
          ]),
        ),
      ),
    );
  }
}
