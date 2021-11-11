import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchSamplePage extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return SwitchSampleState([
      _CheckBean("First", false),
      _CheckBean("Second", false),
      _CheckBean("Third", false),
      _CheckBean("Fourth", false)
    ]);
  }
}

class _CheckBean {
  _CheckBean(this.name, this.checked);

  bool checked;
  String name;
}

class SwitchSampleState extends State<SwitchSamplePage> {
  SwitchSampleState(this._sourceBean);

  final List<_CheckBean> _sourceBean;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: EdgeInsets.only(top: 25),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: _sourceBean
                .map((e) => Padding(
                      padding: EdgeInsets.only(left: 40),
                      child: Row(
                        children: [
                          Text(
                            e.name,
                            style: TextStyle(
                                color: Colors.black,
                                fontSize: 15,
                                decoration: TextDecoration.none),
                          ),
                          Switch(
                              value: e.checked,
                              activeColor: Colors.red,
                              activeTrackColor: Colors.blue,
                              inactiveThumbColor: Colors.blue,
                              inactiveTrackColor: Colors.yellow,
                              onChanged: (value) {
                                e.checked = value;
                                setState(() {});
                              }),
                        ],
                      ),
                    ))
                .toList(),
          ),
        ));
  }
}
