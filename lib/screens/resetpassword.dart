import 'package:flutter/material.dart';
import 'package:pile_up/models/button.dart';
import 'package:pile_up/models/textfield.dart';
import 'package:pile_up/screens/resetPasswordMail.dart';
import 'package:pile_up/screens/signup.dart';
import 'package:pile_up/screens/welcomscr1.dart';

import '../models/assets.dart';
import '../models/textbox.dart';

class resetPassword extends StatefulWidget {
  const resetPassword({super.key});

  @override
  State<resetPassword> createState() => _resetPasswordState();
}

class _resetPasswordState extends State<resetPassword> {
  bool isVisible = true;

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: Color.fromRGBO(246, 246, 246, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(239, 108, 77, 1),
        leading: IconButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                  builder: (context) {
                    return const signup();
                  },
                ),
              );
            },
            icon: const Icon(Icons.arrow_back_ios_new),
            color: Colors.white),
        title: const Center(
          child: textbox(
            text: 'Reset Password',
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [

          SizedBox(height: height * 0.01,),
          const textbox(
            text: 'Old Password',
            color: Color.fromRGBO(66, 66, 66, 1),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
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
          SizedBox(height: height * 0.02,),

          const textbox(
            text: 'New Password',
            color: Color.fromRGBO(66, 66, 66, 1),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
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
          SizedBox(height: height * 0.02,),

          const textbox(
            text: 'Confirm Password',
            color: Color.fromRGBO(66, 66, 66, 1),
            fontSize: 16,
            fontWeight: FontWeight.w500,
          ),
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(5)),
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
          SizedBox(height: height * 0.02,),

          Container(
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
                      return const resetPasswordMail();
                    },
                  ),
                );
              },
              text: 'RESET',
              textColor: Colors.white,
              textSize: 18,
              backgroundColor: Colors.deepOrangeAccent,
            )),
          ),
          SizedBox(
            height: height * 0.3,
          ),
          const Center(
            child: textbox(
                text: 'Or sign in With',
                color: Color.fromRGBO(77, 80, 92, 1),
                fontSize: 14,
                fontWeight: FontWeight.w500),
          ),
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
                height: height * 0.06,
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
    );
  }
}
