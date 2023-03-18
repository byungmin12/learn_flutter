import 'package:flutter/material.dart';

class LoginSign extends StatelessWidget {
  final bool isLogin;

  LoginSign({required this.isLogin});

  @override
  Widget build(BuildContext context) {
    const loginColor = 0xff96EE8E;

    return Stack(
      children: [
        Positioned(
            top: 9,
            left: 75,
            child: Container(
              width: 74,
              height: 21,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(14),
                border: Border.all(
                  width: 1,
                  color: isLogin ? const Color(loginColor) : Colors.black54,
                ),
              ),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  Container(
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(100),
                        color:
                            isLogin ? const Color(loginColor) : Colors.black54),
                    width: 12,
                    height: 12,
                  ),
                  Text(
                    isLogin ? "LIVE" : "OFF",
                    style: TextStyle(
                        fontSize: 12,
                        color:
                            isLogin ? const Color(loginColor) : Colors.black54),
                  )
                ],
              ),
            ))
      ],
    );
  }
}
