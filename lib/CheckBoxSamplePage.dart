import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class CheckBoxSamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return CheckBoxState([
      _CheckBean("name1", false),
      _CheckBean("name2", true),
      _CheckBean("name3", false),
      _CheckBean("name4", true)
    ]);
  }
}

class _CheckBean {
  _CheckBean(this.name, this.checked);

  String name;
  bool checked;
}

class CheckBoxState extends State<CheckBoxSamplePage> {
  CheckBoxState(this._sourceBeans);

  final List<_CheckBean> _sourceBeans;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
      padding: EdgeInsets.only(top: 100, bottom: 100),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _sourceBeans
              .map((e) => Container(
                    height: 40,
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          e.name,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              decoration: TextDecoration.none),
                        ),
                        Checkbox(
                          value: e.checked,
                          onChanged: (value) {
                            e.checked = value!;
                            setState(() {});
                          },
                        )
                      ],
                    ),
                  ))
              .toList(),
        )),
        Expanded(
            child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: _sourceBeans
              .map((e) => Container(
                    height: 40,
                    padding: EdgeInsets.only(left: 20),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Text(
                          e.name,
                          style: TextStyle(
                              fontSize: 15,
                              color: Colors.black,
                              decoration: TextDecoration.none),
                        ),
                        Checkbox(
                          checkColor: Colors.red,
                          fillColor: MaterialStateProperty.resolveWith(
                              (states) => Colors.blueGrey),
                          value: e.checked,
                          shape: CircleBorder(
                              side:
                                  BorderSide(color: Colors.black26, width: 2)),
                          onChanged: (value) {
                            e.checked = value!;
                            setState(() {});
                          },
                        )
                      ],
                    ),
                  ))
              .toList(),
        ))
      ]),
    ));
  }
}
