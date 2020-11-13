import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class SwitchButton extends StatefulWidget {
  @override
  _SwitchButtonState createState() => _SwitchButtonState();
}

class _SwitchButtonState extends State<SwitchButton> {
  bool isSwitched = false;

  @override
  Widget build(BuildContext context) {
    return CupertinoSwitch(
        activeColor: Colors.primaryBlack,
        value: isSwitched,
        onChanged: (value) {
          setState(() {
            if (isSwitched == false) {
              isSwitched = true;
            } else {
              isSwitched = false;
            }
          });
        });
  }
}
