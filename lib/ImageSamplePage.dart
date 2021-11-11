
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ImageSamplePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
            constraints:
                BoxConstraints(minWidth: double.infinity, minHeight: 0),
            child: Text(
              "AssetImage",
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontSize: 20,
                  color: Colors.black,
                  decoration: TextDecoration.none),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 20),
            child: Image(
              height: 125,
              image: AssetImage("images/moutin.jpeg"),
              fit: BoxFit.fitHeight,
            ),
          ),
          ConstrainedBox(
            constraints:
                BoxConstraints(minWidth: double.infinity, minHeight: 0),
            child: Text(
              "NetworkImage",
              textAlign: TextAlign.left,
              style: TextStyle(
                  color: Colors.black,
                  decoration: TextDecoration.none,
                  fontSize: 20),
            ),
          ),
          Container(
            margin: EdgeInsets.symmetric(vertical: 15),
            child: Image(
              height: 180,
              fit: BoxFit.cover,
              image: NetworkImage(
                  "http://mmbiz.qpic.cn/mmbiz/PwIlO51l7wuFyoFwAXfqPNETWCibjNACIt6ydN7vw8LeIwT7IjyG3eeribmK4rhibecvNKiaT2qeJRIWXLuKYPiaqtQ/0"),
            ),
          ),
          Text(
            "Icon Data",
            style: TextStyle(
                color: Colors.black,
                fontSize: 20,
                decoration: TextDecoration.none),
          ),
          Container(
            margin: EdgeInsets.only(top: 20),
            child: ConstrainedBox(
              constraints: BoxConstraints(minWidth: 100, minHeight: 50),
              child: Icon(Icons.send),
            ),
          )
        ],
      ),
    );
  }
}
