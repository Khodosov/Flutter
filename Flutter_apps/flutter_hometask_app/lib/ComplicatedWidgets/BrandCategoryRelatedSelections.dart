import 'package:flutter/material.dart';

class BrandCategoryRelatedSelections extends StatefulWidget {
  @override
  BrandCategoryRelatedSelectionsState createState() =>
      BrandCategoryRelatedSelectionsState();
}

class BrandCategoryRelatedSelectionsState
    extends State<BrandCategoryRelatedSelections> {
  bool justChanged = false;
  Item selectedCategory;
  String pickedName;

  bool phonesIsPicked = false;
  bool audioIsPicked = false;
  bool tVIsPicked = false;
  bool laptopsIsPicked = false;

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
                        if (pickedName == 'Smartphone') {
                          phonesIsPicked = true;
                          laptopsIsPicked = false;
                          tVIsPicked = false;
                          audioIsPicked = false;
                        } else if (pickedName == 'Laptop') {
                          phonesIsPicked = false;
                          laptopsIsPicked = true;
                          tVIsPicked = false;
                          audioIsPicked = false;
                        } else if (pickedName == 'TV') {
                          phonesIsPicked = false;
                          laptopsIsPicked = false;
                          tVIsPicked = true;
                          audioIsPicked = false;
                        } else if (pickedName == 'Audio') {
                          audioIsPicked = true;
                          phonesIsPicked = false;
                          laptopsIsPicked = false;
                          tVIsPicked = false;

                        }
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
                  child: phonesIsPicked
                      ? PhonesDropDown()
                      : audioIsPicked
                          ? AudioDropDown()
                          : tVIsPicked
                              ? TVDropDown()
                              : laptopsIsPicked
                                  ? LaptopsDropDown()
                                  : Container(),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  /*Widget _dropDownButtonDisplay(String selectedItem) {
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
  }*/
}

class Item {
  const Item(this.name, this.icon);

  final String name;
  final Icon icon;
}

class LaptopsDropDown extends StatefulWidget {
  @override
  _LaptopsDropDownState createState() => _LaptopsDropDownState();
}

class _LaptopsDropDownState extends State<LaptopsDropDown> {
  Item selectedBrand;
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

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Item>(
      value: selectedBrand,
      onChanged: (Item Value) {
        setState(() {
          selectedBrand = Value;
        });
      },
      items: brandsLaptops.map((Item user) {
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

class PhonesDropDown extends StatefulWidget {
  @override
  _PhonesDropDownState createState() => _PhonesDropDownState();
}

class _PhonesDropDownState extends State<PhonesDropDown> {
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

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Item>(
      value: selectedBrand,
      onChanged: (Item Value) {
        setState(() {
          selectedBrand = Value;
        });
      },
      items: brandsPhones.map((Item user) {
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

class AudioDropDown extends StatefulWidget {
  @override
  _AudioDropDownState createState() => _AudioDropDownState();
}

class _AudioDropDownState extends State<AudioDropDown> {
  Item selectedBrand;
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

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Item>(
      value: selectedBrand,
      onChanged: (Item Value) {
        setState(() {
          selectedBrand = Value;
        });
      },
      items: brandsAudio.map((Item user) {
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

class TVDropDown extends StatefulWidget {
  @override
  _TVDropDownState createState() => _TVDropDownState();
}

class _TVDropDownState extends State<TVDropDown> {
  Item selectedBrand;
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

  @override
  Widget build(BuildContext context) {
    return DropdownButton<Item>(
      value: selectedBrand,
      onChanged: (Item Value) {
        setState(() {
          selectedBrand = Value;
        });
      },
      items: brandsTV.map((Item user) {
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
