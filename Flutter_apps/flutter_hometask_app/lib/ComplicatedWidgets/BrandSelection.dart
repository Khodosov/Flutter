import 'package:flutter/material.dart';
import 'package:flutter_hometask_app/CustomizedButtons/BrandDropDownButton.dart';


class BrandSelection extends StatefulWidget {
  @override
  _BrandSelectionState createState() => _BrandSelectionState();
}

class _BrandSelectionState extends State<BrandSelection> {

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 40,
      margin: const EdgeInsets.only(top: 5),
      padding: const EdgeInsets.all(5),
      decoration: BoxDecoration(
          color: Colors.grey[200],
          borderRadius: BorderRadius.circular(5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              'Choose a Brand',
              style: TextStyle(
                color: Colors.grey[600],
                fontSize: 14,
                fontWeight: FontWeight.w500,
              ),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(5.0),
            child: DropdownButtonHideUnderline(
              child: BrandDropDownButton(),
            ),
          ),
        ],
      ),
    );
  }
}
