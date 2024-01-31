import 'package:flutter/material.dart';
import 'package:onboarding_intro_screen/onboarding_screen.dart';
import 'package:pile_up/screens/home.dart';



class welcomeScr1 extends StatefulWidget {
  const welcomeScr1({Key? key}) : super(key: key);

  @override
  State<welcomeScr1> createState() => _MyAppState();
}

class _MyAppState extends State<welcomeScr1> {

  @override
  Widget build(BuildContext context) {
    return OnBoardingScreen(
      onSkip: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) {
              return home();
            },
          ),
        );
      },
      showPrevNextButton: true,
      showIndicator: true,
      backgourndColor: Colors.white,
      activeDotColor: Color.fromRGBO(239, 108, 77, 1),
      deactiveDotColor: Color.fromRGBO(239, 108, 77, 1),
      iconColor: Color.fromRGBO(239, 108, 77, 1),
      leftIcon: Icons.arrow_circle_left_rounded,
      rightIcon:  Icons.text_increase,
      iconSize: 30,
      pages: [

        OnBoardingModel(
          image: Image.asset("assets/images/welcomeimages/illustration@3x.png"),
          title: "WELCOME TO PILEUP AND REGISTRATION PROCESS",
          body:
          "PileUp is designed to facilitate group money collection for various occasions and events. Create an account or sign up with your social media account. Start by creating a pile and share it with your friends.",
        ),
        OnBoardingModel(
          image: Image.asset("assets/images/welcomeimages/illustration2@3x.png"),
          title: "Workflow",
          body:
          "Create a folder that contains your piles. Create a pile and set the occasion, amount, title, description, start, and end date. You can invite others to manage the pile with you.",
        ),
        OnBoardingModel(
          image: Image.asset("assets/images/welcomeimages/illustration3@3x.png"),
          title: "Send Money with Love",
          body:
          "When the pile is over, you can redeem or send the amount to the recipient. Share the pile with your friends and invitees via messages, WhatsApp, or a barcode and let each one participate.",
        ),
        OnBoardingModel(
          image: Image.asset("assets/images/welcomeimages/illustration4@3x.png"),
          title: "Shops Discounts",
          body:
          "Enjoy discounts provided by hundreds of brands and shops.",
        ),
      ],
    );
  }
}


