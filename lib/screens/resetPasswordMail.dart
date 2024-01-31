import 'package:flutter/material.dart';
import 'package:pile_up/screens/signup.dart';
import 'package:pile_up/screens/terms-conditions.dart';
import 'package:pile_up/screens/verify.dart';

import '../models/assets.dart';
import '../models/button.dart';
import '../models/textbox.dart';
import '../models/textfield.dart';

class resetPasswordMail extends StatelessWidget {
  const resetPasswordMail({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
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
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height * 0.02),
            const textbox(
                text:
                    'don’t worry ! it happens. please enter your e-mail we will send the code in this e-mail .',
                color: Color.fromRGBO(121, 121, 121, 1),
                fontSize: 16),
            SizedBox(height: height * 0.03),
            const textbox(
              text: 'E-Mail Address',
              color: Color.fromRGBO(66, 66, 66, 1),
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
            Container(
              decoration: BoxDecoration(
                  color: const Color.fromRGBO(246, 246, 246, 1), borderRadius: BorderRadius.circular(5)),
              child: const TextFields(),
            ),
            SizedBox(height: height * 0.02),
            const textbox(
                text: 'With Login or Register, you accept of the',
                color: Color.fromRGBO(77, 80, 92, 1),
                fontSize: 14,
                fontWeight: FontWeight.w700),
            Row(
              children: [
                MainButton(
                    text: ' term of use',
                    textColor: Colors.deepOrangeAccent,
                    textSize: 15,
                    onTap: () {
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
                    text: ' and our ',
                    color: Color.fromRGBO(77, 80, 92, 1),
                    fontSize: 14,
                    fontWeight: FontWeight.w700),
                MainButton(
                    text: 'privacy policy.',
                    textColor: Colors.deepOrangeAccent,
                    textSize: 15,
                    onTap: () {
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
            SizedBox(height: height * 0.03),
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
                          return verify();
                        },
                      ),
                    );
                  },
                  text: 'SEND CODE',
                  textColor: Colors.white,
                  textSize: 18,
                  backgroundColor: Colors.deepOrangeAccent,
                ),
              ),
            ),
            SizedBox(height: height * 0.35),
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
                  height: height * 0.1,
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
            )
          ],
        ),
      ),
    );
  }
}
