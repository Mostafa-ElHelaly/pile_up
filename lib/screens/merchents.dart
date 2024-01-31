import 'package:flutter/material.dart';
import 'package:pile_up/models/merchants.dart';
import 'package:pile_up/models/textbox.dart';
import 'package:pile_up/screens/signup.dart';

class merchants extends StatelessWidget {
  const merchants({super.key});

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
            text: 'Merchants',
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
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: textbox(text: 'Enjoy Fantastic Discounts', color: Color.fromRGBO(48, 48, 49, 1), fontSize: 20 , fontWeight: FontWeight.w700,),
          ),
          Expanded(
            child: ListView.builder(
                itemCount: 15,
                itemBuilder: (context,index){
              return Padding(
                padding: const EdgeInsets.all(8.0),
                child: MerchantsStores(
                  merchants: Merchants(text: 'BURGER KING INDONESIA', description: 'Burger King Corporation is an American multinational chain of hamburger fast food restaurants.', image: 'assets/images/logo1.png'),),
              );

            }),
          )
        ],
      ),
    );
  }
}
