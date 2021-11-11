import 'package:flutter/material.dart';

class TextSamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(top: 25),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Container(
            child: Text(
              "SimpleText",
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 12,
                decoration: TextDecoration.none,
              ),
            ),
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.yellow),
            margin: EdgeInsets.only(bottom: 10, top: 10),
            height: 20,
            width: 100,
          ),
          Text(
            "SimpleText" * 20,
            overflow: TextOverflow.ellipsis,
            maxLines: 1,
            style: TextStyle(
                fontSize: 15,
                decoration: TextDecoration.none,
                color: Colors.blue,
                background: Paint()..color = Colors.yellow),
          ),
          Container(
            height: 50,
            padding: EdgeInsets.symmetric(horizontal: 30),
            decoration: BoxDecoration(color: Colors.yellow),
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Text(
              "Ray",
              textAlign: TextAlign.center,
              style: TextStyle(
                  decoration: TextDecoration.none,
                  fontSize: 20,
                  height: 2,
                  background: Paint()..color = Colors.red,
                  color: Colors.blue),
            ),
          ),
          Container(
            height: 40,
            width: 140,
            alignment: Alignment.center,
            decoration: BoxDecoration(color: Colors.yellow),
            margin: EdgeInsets.symmetric(vertical: 10),
            child: StateText(params: "StateParams"),
          ),
          Container(
            height: 50,
            alignment: Alignment.center,
            padding: EdgeInsets.symmetric(horizontal: 10),
            decoration: BoxDecoration(color: Colors.yellow),
            margin: EdgeInsets.symmetric(vertical: 5),
            child: Text.rich(TextSpan(
                text: "SpanText",
                style: TextStyle(
                    color: Colors.red,
                    fontSize: 25,
                    decoration: TextDecoration.none),
                children: [
                  TextSpan(
                      text: "ChildSpan",
                      style: TextStyle(
                        color: Colors.blue,
                        decoration: TextDecoration.underline,
                        background: Paint()..color = Colors.tealAccent,
                      ))
                ])),
          )
        ],
      ),
    );
  }
}

class StateText extends StatefulWidget {
  final String params;

  StateText({
    Key? key,
    required this.params,
  }) : super(key: key);

  @override
  _SimpleTextState createState() {
    return _SimpleTextState(params);
  }
}

class _SimpleTextState extends State<StateText> {
  String data;

  _SimpleTextState(this.data);

  @override
  Widget build(BuildContext context) {
    return Text(
      data,
      style: TextStyle(fontSize: 20, decoration: TextDecoration.none),
    );
  }
}
