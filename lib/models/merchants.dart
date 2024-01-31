import 'package:flutter/material.dart';
import 'package:pile_up/models/textbox.dart';

class MerchantsStores extends StatelessWidget {
  const MerchantsStores({super.key, required this.merchants});

  final Merchants merchants;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        children: [
          Row(

            children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 10),
                  child: CircleAvatar(
                    radius: 30,
                    backgroundImage: AssetImage(merchants.image),
                  ),
                ),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textbox(

                        text: merchants.text,
                        color: Color.fromRGBO(47, 47, 47, 1),
                        fontSize: 14,fontWeight: FontWeight.w500),
                    textbox(
                        text: merchants.description,
                        color: Color.fromRGBO(47, 47, 47, 1),
                        fontSize: 14),
                  ],
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
class Merchants{
  final String text;
  final String description;
  final String image;
  Merchants({required this.text, required this.description, required this.image});

}