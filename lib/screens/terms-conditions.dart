import 'package:flutter/material.dart';
import 'package:pile_up/models/textbox.dart';
import 'package:pile_up/screens/signup.dart';

class termsCond extends StatelessWidget {
  const termsCond({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;
    return Scaffold(
      backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
      appBar: AppBar(
        backgroundColor: const Color.fromRGBO(246, 246, 246, 1),
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
            icon: const Icon(Icons.arrow_back_ios_new)),
        title: const textbox(
          text: 'Terms and Conditions',
          color: Color.fromRGBO(18, 24, 38, 1),
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 50),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              height: height * 0.08,
            ),
            const textbox(
              text: '1.Acceptance of Terms',
              color: Color.fromRGBO(239, 108, 77, 1),
              fontSize: 14,
            ),
            const textbox(
              text:
                  'By downloading, installing, accessing, or using [Your Mobile App Name], you agree to comply with and be bound by these terms and conditions, along with our Privacy Policy. If you do not agree with any part of these terms, you may not use our app.',
              color: Color.fromRGBO(18, 24, 38, 1),
              fontSize: 12,
            ),
            SizedBox(
              height: height * 0.05,
            ),
            const textbox(
              text: '2. License',
              color: Color.fromRGBO(239, 108, 77, 1),
              fontSize: 14,
            ),
            const textbox(
              text:
                  "We grant you a non-exclusive, non-transferable, limited license to use [Your Mobile App Name] solely for your personal, non-commercial purposes, subject to these terms and the applicable app store's terms of service.",
              color: Color.fromRGBO(18, 24, 38, 1),
              fontSize: 12,
            ),
            SizedBox(
              height: height * 0.05,
            ),
            const textbox(
              text: '3. User Account',
              color: Color.fromRGBO(239, 108, 77, 1),
              fontSize: 14,
            ),
            const textbox(
              text:
                  'Some features of [Your Mobile App Name] may require you to create an account. You are responsible for maintaining the confidentiality of your account information and for all activities that occur under your account. You agree to provide accurate, current, and complete information during the registration process and to update such information to keep it accurate, current, and complete.',
              color: Color.fromRGBO(18, 24, 38, 1),
              fontSize: 12,
            ),
            SizedBox(
              height: height * 0.05,
            ),
            const textbox(
              text: '4. Use of the App',
              color: Color.fromRGBO(239, 108, 77, 1),
              fontSize: 14,
            ),
            const textbox(
              text:
                  'You agree to use [Your Mobile App Name] only for lawful purposes and in a manner consistent with all applicable local, national, and international laws and regulations.',
              color: Color.fromRGBO(18, 24, 38, 1),
              fontSize: 12,
            ),
            SizedBox(
              height: height * 0.05,
            ),
          ],
        ),
      ),
    );
  }
}
