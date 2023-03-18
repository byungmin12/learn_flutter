import 'package:flutter/material.dart';

import 'LoginSign.dart';

class PersonCard extends StatelessWidget {
  final String imageUrl;
  final bool isLogin;

  PersonCard({required this.imageUrl, required this.isLogin});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 216,
      height: 264,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(14),
        image: DecorationImage(
          image: AssetImage(imageUrl),
          fit: BoxFit.fill,
        ),
      ),
      child: LoginSign(
        isLogin: isLogin,
      ),
    );
  }
}
