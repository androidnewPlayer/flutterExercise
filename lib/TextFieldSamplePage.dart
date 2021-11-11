import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class TextFiledSamplePage extends StatelessWidget {
  final inputControl = TextEditingController();
  final focusNode = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Container(
        padding: EdgeInsets.only(top: 25),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: EdgeInsets.all(15),
              child: TextField(
                autofocus: false,
                keyboardType: TextInputType.text,
                maxLines: 1,
                maxLength: 20,
                decoration: InputDecoration(
                    hintText: "pleaseInput",
                    errorText: "input error",
                    labelStyle: TextStyle(
                        color: Colors.black,
                        fontSize: 15,
                        decoration: TextDecoration.none),
                    errorStyle: TextStyle(
                        color: Colors.red,
                        fontSize: 15,
                        decoration: TextDecoration.none)),
              ),
            )
          ],
        ),
      ),
    );
  }
}
