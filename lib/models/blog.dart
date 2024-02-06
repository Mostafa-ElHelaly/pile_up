import 'package:flutter/material.dart';
import 'package:pile_up/models/button.dart';
import 'package:pile_up/models/textbox.dart';

class BLogStores extends StatelessWidget {
  const BLogStores({super.key, required this.blog});

  final Merchants blog;

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
                  child: SizedBox(
                      height: 120,
                      width: 120,
                      child: Image(
                        image: AssetImage(blog.image),
                      ))),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    textbox(
                        text: blog.text,
                        color: Color.fromRGBO(47, 47, 47, 1),
                        fontSize: 14,
                        fontWeight: FontWeight.w500),
                    textbox(
                        text: blog.description,
                        color: Color.fromRGBO(47, 47, 47, 1),
                        fontSize: 14),
                    MainButton(
                      text: blog.Button,
                      textColor: Colors.deepOrangeAccent,
                      textSize: 14,
                      onTap: () {},
                      textUnderLine: TextDecoration.underline,
                      textUnderLineColor: Colors.deepOrangeAccent,
                    )
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

class Merchants {
  final String text;
  final String description;
  final String image;
  final String Button;

  Merchants({
    required this.text,
    required this.description,
    required this.image,
    required this.Button,
  });
}
