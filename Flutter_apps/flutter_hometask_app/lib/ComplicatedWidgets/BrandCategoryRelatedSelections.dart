import 'package:flutter/material.dart';

class BrandCategoryRelatedSelections extends StatefulWidget {
  @override
  BrandCategoryRelatedSelectionsState createState() =>
      BrandCategoryRelatedSelectionsState();
}

class BrandCategoryRelatedSelectionsState
    extends State<BrandCategoryRelatedSelections> {
  Item selectedCategory;
  String pickedName;
  List<Item> categories = <Item>[
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

  Item selectedBrand;
  List<Item> brandsPhones = <Item>[
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

  List<Item> brandsLaptops = <Item>[
    const Item(
        'Samsung',
        Icon(
          Icons.computer,
          color: Colors.primaryBlack,
        )),
    const Item(
        'MSI',
        Icon(
          Icons.computer,
          color: Colors.primaryBlack,
        )),
    const Item(
        'Lenovo',
        Icon(
          Icons.computer,
          color: Colors.primaryBlack,
        )),
    const Item(
        'Apple',
        Icon(
          Icons.computer,
          color: Colors.primaryBlack,
        )),
  ];

  List<Item> brandsTV = <Item>[
    const Item(
        'Samsung',
        Icon(
          Icons.tv,
          color: Colors.primaryBlack,
        )),
    const Item(
        'LG',
        Icon(
          Icons.tv,
          color: Colors.primaryBlack,
        )),
    const Item(
        'Sony',
        Icon(
          Icons.tv,
          color: Colors.primaryBlack,
        )),
    const Item(
        'Xiaomi',
        Icon(
          Icons.tv,
          color: Colors.primaryBlack,
        )),
  ];

  List<Item> brandsAudio = <Item>[
    const Item(
        'Marhsal',
        Icon(
          Icons.headset,
          color: Colors.primaryBlack,
        )),
    const Item(
        'JBL',
        Icon(
          Icons.headset,
          color: Colors.primaryBlack,
        )),
    const Item(
        'Harman',
        Icon(
          Icons.headset,
          color: Colors.primaryBlack,
        )),
    const Item(
        'Meizu',
        Icon(
          Icons.headset,
          color: Colors.primaryBlack,
        )),
  ];

  var varList;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 40,
          margin: const EdgeInsets.only(top: 5),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(5)),
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
                  child: DropdownButton<Item>(
                    value: selectedCategory,
                    onChanged: (Item Value) {
                      setState(() {
                        selectedCategory = Value;
                        pickedName = selectedCategory.name;
                      });
                    },
                    items: categories.map((Item category) {
                      return DropdownMenuItem<Item>(
                        value: category,
                        child: Row(
                          children: <Widget>[
                            category.icon,
                            SizedBox(
                              width: 10,
                            ),
                            Text(
                              category.name,
                              style: TextStyle(color: Colors.black),
                            ),
                          ],
                        ),
                      );
                    }).toList(),
                  ),
                ),
              ),
            ],
          ),
        ),
        Container(
          height: 40,
          margin: const EdgeInsets.only(top: 5),
          padding: const EdgeInsets.all(5),
          decoration: BoxDecoration(
              color: Colors.grey[200], borderRadius: BorderRadius.circular(5)),
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
                  child: _dropDownButtonDisplay(pickedName),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _dropDownButtonDisplay(String selectedItem) {
    List<Item> pickedList = <Item>[];
    if (selectedItem == 'Smartphone') {
      pickedList = brandsPhones;
    } else if (selectedItem == 'Laptop') {
      pickedList = brandsLaptops;
    } else if (selectedItem == 'TV') {
      pickedList = brandsTV;
    } else if (selectedItem == 'Audio') {
      pickedList = brandsAudio;
    }
    return DropdownButton<Item>(
      value: selectedBrand,
      onChanged: (Item Value) {
        setState(() {
          selectedBrand = Value;
        });
      },
      items: pickedList.map((Item user) {
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

class Item {
  const Item(this.name, this.icon);

  final String name;
  final Icon icon;
}
