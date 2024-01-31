import 'package:flutter/material.dart';
import 'package:pile_up/models/button.dart';
import 'package:pile_up/models/textbox.dart';
import 'package:pile_up/screens/signup.dart';

class drawerHome extends StatelessWidget {
  const drawerHome({super.key});

  @override
  Widget build(BuildContext context) {
    double height = MediaQuery.of(context).size.height;
    double width = MediaQuery.of(context).size.width;

    return Drawer(
shadowColor: Colors.blue,
      backgroundColor: const Color.fromRGBO(255, 255, 255, 1),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(35),
            child: Row(
              children: [
                const CircleAvatar(
                  radius: 30,
                  backgroundImage: AssetImage('assets/images/logo1.png'),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      textbox(
                          text: 'Mohamed Ahmed',
                          color: Colors.black,
                          fontSize: 16),
                      MainButton(
                          text: 'View Profile',
                          textColor: Color.fromRGBO(128, 129, 132, 1),
                          textSize: 14,
                          onTap: () {})
                    ],
                  ),
                )
              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),


          const Padding(
            padding: EdgeInsets.all(30),
            child:  Row(
              children: [
                textbox(text: '37', color: Colors.black, fontSize: 16 ,fontWeight: FontWeight.w500),
                textbox(
                    text: ' Profile Viewers',
                    color: Color.fromRGBO(128, 129, 132, 1),
                    fontSize: 16),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.only(left: 30 , bottom: 30),
            child: Row(
              children: [
                textbox(text: '46', color: Colors.black, fontSize: 16 , fontWeight: FontWeight.w500),
                textbox(
                    text: ' Piles',
                    color: Color.fromRGBO(128, 129, 132, 1),
                    fontSize: 16),

              ],
            ),
          ),
          const Divider(
            thickness: 1,
            color: Colors.grey,
          ),

          SizedBox(height: height * 0.5 ),

          Padding(
            padding: const EdgeInsets.all(30),
            child: Row(
              children: [
                Icon(Icons.logout , color: Colors.deepOrangeAccent),
                MainButton(text: 'Logout', textColor: Color.fromRGBO(48, 48, 49, 1), textSize: 16, onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                      builder: (context) {
                        return signup();
                      },
                    ),
                  );
                },)
              ],
            ),
          )
        ],
      ),
    );
  }
}
