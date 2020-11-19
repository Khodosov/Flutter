import 'package:flutter/material.dart';

class CategorySelection extends StatefulWidget {
  @override
  _CategorySelectionState createState() => _CategorySelectionState();
}

class _CategorySelectionState extends State<CategorySelection> {
  String defaultTitle = 'Choose a category';
  String categoryTitle = '';

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
              'Choose a Category',
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
              child: DropdownButton<String>(
                iconSize: 25,
                icon: Icon(Icons.keyboard_arrow_down),
                items: <String>['Aaaaaaaaaa', 'Baaaaaaa', 'C', 'D']
                    .map((String value) {
                  return new DropdownMenuItem<String>(
                    value: value,
                    child: new Text(value),
                  );
                }).toList(),
                onChanged: (_) {},
              ),
            ),
          ),
        ],
      ),
    );
  }
}
