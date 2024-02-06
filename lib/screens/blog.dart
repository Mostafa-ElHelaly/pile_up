import 'package:flutter/material.dart';
import 'package:pile_up/screens/signup.dart';

import '../models/blog.dart';
import '../models/textbox.dart';

class blog extends StatelessWidget {
  const blog({super.key});

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
            text: 'Blog',
            color: Colors.white,
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 10),
            child: textbox(
              text: 'Very Useful Articles',
              color: Color.fromRGBO(48, 48, 49, 1),
              fontSize: 20,
              fontWeight: FontWeight.w700,
            ),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 10, vertical: 10),
                    child: BLogStores(
                      blog: Merchants(
                        text: 'BURGER KING INDONESIA',
                        description:
                            'Burger King Corporation is an American multinational chain of hamburger fast food restaurants.',
                        image: 'assets/images/logo1.png',
                        Button: 'See More',
                      ),
                    ),
                  );
                }),
          )
        ],
      ),
    );
  }
}
