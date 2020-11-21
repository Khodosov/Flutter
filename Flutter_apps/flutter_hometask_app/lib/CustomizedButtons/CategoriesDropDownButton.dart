import 'package:flutter/material.dart';

class Item {
  const Item(this.name, this.icon);
  final String name;
  final Icon icon;
}

class CategoriesDropDownButton extends StatefulWidget {
  State createState() => CategoriesDropDownButtonState();
}

class CategoriesDropDownButtonState extends State<CategoriesDropDownButton> {
  Item selectedUser;
  List<Item> users = <Item>[
    const Item(
        'Smartphone',
        Icon(
          Icons.smartphone,
          color: Colors.primaryBlack,
        )),
    const Item(
        'Laptop',
        Icon(
          Icons.computer,
          color: Colors.primaryBlack,
        )),
    const Item(
        'TV',
        Icon(
          Icons.tv,
          color: Colors.primaryBlack,
        )),
    const Item(
        'Audio',
        Icon(
          Icons.audiotrack,
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
