import 'package:flutter/material.dart';

class SilverBellMainTitle extends StatelessWidget {
  const SilverBellMainTitle({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Text(
        "SILVER BELL",
        style: TextStyle(
          fontWeight: FontWeight.w900,
          fontSize: 18,
          color: Colors.white,
        ),
      ),
    );
  }
}
