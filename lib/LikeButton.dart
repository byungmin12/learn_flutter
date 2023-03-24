import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LikeButton extends StatelessWidget {
  final textCrl = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Center(
      child: TextButton(
        onPressed: () => showDialog<String>(
          context: context,
          builder: (BuildContext context) => AlertDialog(
            title: const Text('메시지를 전하세요'),
            content: TextField(
              controller: textCrl,
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () => Navigator.pop(context, 'Cancel'),
                child: const Text('Cancel'),
              ),
              TextButton(
                onPressed: () => {
                  Navigator.pop(context, 'OK'),
                  Fluttertoast.showToast(
                      msg: textCrl.text, gravity: ToastGravity.CENTER)
                },
                child: const Text('OK'),
              ),
            ],
          ),
        ),
        child: const Text('좋아요'),
      ),
    );
  }
}
