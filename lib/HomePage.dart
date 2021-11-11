import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_exercise/ButtonSamplePage.dart';
import 'package:flutter_exercise/CheckBoxSamplePage.dart';
import 'package:flutter_exercise/ImageSamplePage.dart';
import 'package:flutter_exercise/SwitchSamplePage.dart';
import 'package:flutter_exercise/TextFieldSamplePage.dart';
import 'package:flutter_exercise/TextSamplePage.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 25),
      decoration: BoxDecoration(color: Colors.white),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.max,
        textDirection: TextDirection.ltr,
        verticalDirection: VerticalDirection.down,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ConstrainedBox(
              constraints:
                  BoxConstraints(minWidth: double.infinity, minHeight: 40),
              child: Padding(
                padding: EdgeInsets.only(top: 25),
                child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(left: 15),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return TextSamplePage();
                            }));
                          },
                          child: Text("TEXT"),
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(left: 10, right: 10),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ButtonSamplePage();
                            }));
                          },
                          child: Text("BUTTON"),
                        ),
                      )),
                      Expanded(
                          child: Padding(
                        padding: EdgeInsets.only(right: 15),
                        child: ElevatedButton(
                          onPressed: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) {
                              return ImageSamplePage();
                            }));
                          },
                          child: Text("IMAGE"),
                        ),
                      )),
                    ]),
              )),
          ConstrainedBox(
            constraints:
                BoxConstraints(minWidth: double.infinity, minHeight: 40),
            child: Padding(
              padding: EdgeInsets.only(top: 10),
              child: Flex(
                direction: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 1,
                      child: Padding(
                          padding: EdgeInsets.only(left: 15, right: 5),
                          child: ElevatedButton(
                              onPressed: () {
                                Navigator.push(context,
                                    MaterialPageRoute(builder: (context) {
                                  return CheckBoxSamplePage();
                                }));
                              },
                              child: Text("CheckBox")))),
                  Expanded(
                      flex: 1,
                      child: Padding(
                        padding: EdgeInsets.only(left: 5, right: 15),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (context) {
                                return SwitchSamplePage();
                              }));
                            },
                            child: Text("Switch")),
                      )),
                ],
              ),
            ),
          ),
          ConstrainedBox(
            constraints:
                BoxConstraints(minWidth: double.infinity, minHeight: 40),
            child: Padding(
              padding: EdgeInsets.only(top: 10, bottom: 0),
              child: Flex(
                direction: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 1,
                    child: Padding(
                        padding: EdgeInsets.only(left: 15, right: 5),
                        child: ElevatedButton(
                            onPressed: () {
                              Navigator.push(context,
                                  MaterialPageRoute(builder: (builder) {
                                return TextFiledSamplePage();
                              }));
                            },
                            child: Text("TextFiled"))),
                  ),
                  Expanded(
                      flex: 1,
                      child: Padding(
                          padding: EdgeInsets.only(left: 5, right: 15),
                          child: ElevatedButton(
                              onPressed: () {}, child: Text("Form")))),
                ],
              ),
            ),
          ),
          ConstrainedBox(
            constraints:
                BoxConstraints(minWidth: double.infinity, minHeight: 40),
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10, bottom: 0),
              child: ElevatedButton(
                  onPressed: () {}, child: Text("LinearProgressIndicator")),
            ),
          ),
          ConstrainedBox(
            constraints:
                BoxConstraints(minWidth: double.infinity, minHeight: 40),
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Flex(
                direction: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      flex: 2,
                      child: Padding(
                        padding: EdgeInsets.only(right: 10),
                        child: ElevatedButton(
                          onPressed: () {},
                          child: Text("Constraints"),
                        ),
                      )),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Row"),
                    ),
                  )),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Column"),
                    ),
                  )
                ],
              ),
            ),
          ),
          ConstrainedBox(
            constraints:
                BoxConstraints(minWidth: double.infinity, minHeight: 40),
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Flex(
                direction: Axis.horizontal,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Flex"),
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Wrap"),
                    ),
                  )),
                  Expanded(
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Flow"),
                    ),
                  )
                ],
              ),
            ),
          ),
          ConstrainedBox(
            constraints:
                BoxConstraints(minWidth: double.infinity, minHeight: 40),
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Stack"),
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Positioned"),
                    ),
                  )),
                  Expanded(
                      child: ElevatedButton(
                    onPressed: () {},
                    child: Text("Align"),
                  ))
                ],
              ),
            ),
          ),
          ConstrainedBox(
            constraints:
                BoxConstraints(minWidth: double.infinity, minHeight: 40),
            child: Padding(
              padding: EdgeInsets.only(left: 15, right: 15, top: 10),
              child: Flex(
                direction: Axis.horizontal,
                children: [
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(right: 5),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Center"),
                    ),
                  )),
                  Expanded(
                      child: Padding(
                    padding: EdgeInsets.only(left: 5),
                    child: ElevatedButton(
                      onPressed: () {},
                      child: Text("LayoutBuilder"),
                    ),
                  ))
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
