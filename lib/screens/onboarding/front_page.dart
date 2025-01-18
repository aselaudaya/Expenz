import 'package:expenz/costants/colors.dart';
import 'package:flutter/material.dart';

class FrontPage extends StatelessWidget {
  const FrontPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(
          "assets/images/logo.png",
          width: 120,
          height: 120,
        ),
        SizedBox(
          height: 10,
        ),
        Text(
          "Expenz",
          style: TextStyle(
            fontSize: 50,
            fontWeight: FontWeight.bold,
            color: kMainColor,
          ),
        )
      ],
    );
  }
}
