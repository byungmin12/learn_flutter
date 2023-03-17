import 'package:flutter/material.dart';
import 'package:my_first_flutter/SilverBellMainTitle.dart';

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
              Center(
                child: Container(
                  width: 216,
                  height: 264,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(14),
                    image: DecorationImage(
                      image: AssetImage('assets/peopleImages/1.jpg'),
                      fit: BoxFit.fill,
                    ),
                  ),
                ),
              )
            ],
          )
        ]),
      ),
    );
  }
}
