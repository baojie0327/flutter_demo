import 'package:flutter/material.dart';

class SelectScreen extends StatefulWidget {
  @override
  SelectState createState() => new SelectState();
}

class SelectState extends State<SelectScreen> {
  bool _checkValue = true;
  bool _checkList = true;
  bool _switchValue = true;
  int groupValue = 1;
  String groupListValue = "android";
  double sliderValue = 0.0;
  var _time;
  var _date;

  _showTimePicker() async {
    await showTimePicker(context: context, initialTime: TimeOfDay.now())
        .then((onValue) {
      setState(() {
        _time = onValue.toString();
      });
    }).catchError((onError) {
      print(onError);
    });
  }

  _showDataPicker() async {
    showDatePicker(
            context: context,
            initialDate: DateTime.now(),
            firstDate: DateTime.now().subtract(Duration(days: 30)),
            lastDate: DateTime.now().add(Duration(days: 30)))
        .then((onValue) {
      setState(() {
        _date = onValue.toString();
      });
    }).catchError((onError) {
      print(onError);
    });
  }

  @override
  Widget build(BuildContext context) {
    // TODO: implement build



    return Scaffold(
      appBar: AppBar(
        title: Text('选择框'),
      ),
      body: new Container(
        padding: const EdgeInsets.all(8.0),
        child: new Column(
          children: <Widget>[
            Checkbox(
              value: _checkValue,
              activeColor: Colors.blue,
              onChanged: (bool value) {
                setState(() {
                  _checkValue = value;
                });
              },
            ),
            CheckboxListTile(
              secondary: const Icon(Icons.shutter_speed),
              title: Text('硬件加速'),
              onChanged: (bool value) {
                setState(() {
                  _checkList = value;
                });
              },
              value: _checkList,
            ),
            Switch(
              value: _switchValue,
              activeColor: Colors.blue,
              onChanged: (bool value) {
                setState(() {
                  this._switchValue = value;
                });
              },
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Radio(
                  value: 0,
                  activeColor: Colors.blue,
                  groupValue: groupValue,
                  onChanged: (T) {
                    setState(() {
                      groupValue = T;
                    });
                  },
                ),
                Radio(
                  value: 1,
                  activeColor: Colors.blue,
                  groupValue: groupValue,
                  onChanged: (T) {
                    setState(() {
                      groupValue = T;
                    });
                  },
                ),
                Radio(
                  value: 2,
                  activeColor: Colors.blue,
                  groupValue: groupValue,
                  onChanged: (T) {
                    setState(() {
                      groupValue = T;
                    });
                  },
                ),
              ],
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Flexible(
                  child: RadioListTile(
                    value: "android",
                    groupValue: groupListValue,
                    title: Text('android'),
                    onChanged: (T) {
                      setState(() {
                        groupListValue = T;
                      });
                    },
                  ),
                ),
                Flexible(
                  child: RadioListTile(
                    value: "ios",
                    groupValue: groupListValue,
                    title: Text('ios'),
                    onChanged: (T) {
                      setState(() {
                        groupListValue = T;
                      });
                    },
                  ),
                ),
                Flexible(
                  child: RadioListTile(
                    value: "java",
                    groupValue: groupListValue,
                    title: Text('java'),
                    onChanged: (T) {
                      setState(() {
                        groupListValue = T;
                      });
                    },
                  ),
                ),
              ],
            ),
            Slider(
              value: sliderValue,
              max: 100.0,
              min: 0.0,
              activeColor: Colors.blue,
              onChanged: (double value) {
                setState(() {
                  sliderValue = value;
                });
              },
            ),
            RaisedButton(
              child: Text(_time == null ? '选择时间' : _time),
              onPressed: () => _showTimePicker(),
            ),
            RaisedButton(
              child: Text(_date == null ? '选择日期' : _date),
              onPressed: () => _showDataPicker(),
            ),

          ],
        ),
      ),
    );
  }
}
