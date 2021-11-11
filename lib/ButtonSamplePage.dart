import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ButtonSamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(color: Colors.white),
      padding: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Container(
            width: 120,
            height: 40,
            margin: EdgeInsets.only(top: 20, left: 20, right: 20),
            child: ElevatedButton(
              onPressed: () {},
              child: Text(
                "ElevateButton",
                style: TextStyle(color: Colors.blue, fontSize: 12),
              ),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.resolveWith(
                      (states) => Colors.yellow),
                  shape: MaterialStateProperty.resolveWith((states) =>
                      RoundedRectangleBorder(
                          side: BorderSide(color: Colors.blueAccent, width: 2),
                          borderRadius:
                              BorderRadius.all(Radius.circular(20.0))))),
            ),
          ),
          Container(
            width: 120,
            height: 40,
            margin: EdgeInsets.only(top: 40),
            child: TextButton(
              onPressed: () {},
              child: Text("TextButton"),
              style: ButtonStyle(
                  backgroundColor: MaterialStateProperty.all(Colors.yellow),
                  shape: MaterialStateProperty.resolveWith((states) =>
                      RoundedRectangleBorder(
                          side: BorderSide(color: Colors.red, width: 2),
                          borderRadius:
                              BorderRadius.all(Radius.circular(30))))),
            ),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            child: OutlinedButton(
                onPressed: () {},
                child: Text(
                  "OutlinedButton",
                  style: TextStyle(color: Colors.red),
                ),
                style: ButtonStyle(
                    shape: MaterialStateProperty.resolveWith((states) =>
                        RoundedRectangleBorder(
                            side: BorderSide(color: Colors.black, width: 5),
                            borderRadius:
                                BorderRadius.all(Radius.circular(2)))))),
          ),
          Container(
            margin: EdgeInsets.only(top: 40),
            height: 40,
            width: 120,
            alignment: Alignment.center,
            decoration: BoxDecoration(
                color: Colors.yellow,
                shape: BoxShape.rectangle,
                border: Border.fromBorderSide(
                    BorderSide(color: Colors.red, width: 2)),
                borderRadius: BorderRadius.all(Radius.circular(15))),
            child: TextButton.icon(
                onPressed: () {},
                icon: Icon(Icons.send),
                label: Text("IconText")),
          )
        ],
      ),
    );
  }
}
