import 'package:flutter/material.dart';

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}

class BrandDropDownButton extends StatefulWidget {
  State createState() => BrandDropDownButtonState();

}

class BrandDropDownButtonState extends State<BrandDropDownButton> {
  Item selectedUser;
  List<Item> users = <Item>[
    const Item(
        'Samsung',
        Icon(
          Icons.android,
          color: Colors.primaryBlack,
        )),
    const Item(
        'LG',
        Icon(
          Icons.android,
          color: Colors.primaryBlack,
        )),
    const Item(
        'Sony',
        Icon(
          Icons.android,
          color: Colors.primaryBlack,
        )),
    const Item(
        'Apple',
        Icon(
          Icons.mobile_screen_share,
          color: Colors.primaryBlack,
        )),
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Item>(
      value: selectedUser,
      onChanged: (Item Value) {
        setState(() {
          selectedUser = Value;
        });
      },
      items: users.map((Item user) {
        return DropdownMenuItem<Item>(
          value: user,
          child: Row(
            children: <Widget>[
              user.icon,
              SizedBox(
                width: 10,
              ),
              Text(
                user.name,
                style: TextStyle(color: Colors.black),
              ),
            ],
          ),
        );
      }).toList(),
    );
  }

}
