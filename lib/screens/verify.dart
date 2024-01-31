import 'package:flutter/material.dart';
import 'package:pile_up/models/assets.dart';
import 'package:pile_up/models/textbox.dart';
import 'package:pile_up/models/textfield.dart';
import 'package:pile_up/screens/signup.dart';
import '../models/button.dart';
import 'merchents.dart';


class verify extends StatelessWidget {
  const verify({super.key});

  @override
  Widget build(BuildContext context) {
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
        padding: EdgeInsets.symmetric(horizontal: 20, vertical: 10),
        child: Column(
          children: [
            const textbox(
                text:
                    'code has been sent to user@gmail.com enter the code below to continue.',
                color: Color.fromRGBO(121, 121, 121, 1),
                fontSize: 16),
            const SizedBox(height: 20),
            const Padding(
              padding: EdgeInsets.symmetric(horizontal: 90),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  TextFields(width: 40),
                  TextFields(width: 40),
                  TextFields(width: 40),
                  TextFields(width: 40),
                ],
              ),
            ),
            const SizedBox(height: 20),
            MainButton(
              onTap: (){},
              text: 'Resend code',
              textColor: Color.fromRGBO(239, 108, 77, 1),
              textSize: 16,
              textUnderLineColor: Color.fromRGBO(239, 108, 77, 1),
              textUnderLine: TextDecoration.underline,
            ),
            const SizedBox(height: 30),

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
                          return merchants();
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

            SizedBox(height: 320),
            textbox(text: 'Or sign in With', color: Color.fromRGBO(77, 80, 92, 1), fontSize: 15),
            SizedBox(height: 15),

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
                  height: 50,
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
