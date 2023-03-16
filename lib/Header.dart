import 'package:flutter/material.dart';

class Header extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Container(
          padding: const EdgeInsets.only(
            right: 20,
          ),
          child: Icon(
            Icons.account_circle,
            size: 54,
            color: Colors.white,
          ),
        )
      ],
    );
  }
}
