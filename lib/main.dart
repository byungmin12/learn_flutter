import 'package:flutter/material.dart';
import 'package:my_first_flutter/SilverBellMainTitle.dart';

import 'Carousel.dart';
import 'Header.dart';
import 'MainBackground.dart';

void main() {
  runApp(MaterialApp(home: MyApp()));
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: Stack(children: [
          MainBackground(),
          Column(
            children: [
              const SizedBox(
                height: 30,
              ),
              Header(),
              const SizedBox(
                height: 20,
              ),
              SilverBellMainTitle(),
              const SizedBox(
                height: 70,
              ),
              Carousel()
            ],
          )
        ]),
      ),
    );
  }
}
