import 'package:flutter/material.dart';

import 'CategorySelection.dart';
import 'Results.dart';
import 'SwitchButton.dart';

class AddFiltersScreen extends StatefulWidget {
  @override
  _AddFiltersScreenState createState() => _AddFiltersScreenState();
}

class _AddFiltersScreenState extends State<AddFiltersScreen> {
  bool searchIsActive = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.black26,
      appBar: AppBar(
        centerTitle: true,
        title: Text('Filters'),
        leading: IconButton(
            icon: Icon(Icons.arrow_back_ios),
            onPressed: () {
              Navigator.pop(context);
            }),
      ),
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(20)),

            width: double.infinity,
            padding: const EdgeInsets.all(20),

            // Filters are here. Results are also here
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: <Widget>[
                Align(
                  alignment: Alignment.topLeft,
                  // margin: EdgeInsets.only(bottom: 15),
                  child: Text(
                    'Search for Best Deal',
                    style: TextStyle(
                      color: Colors.primaryBlack,
                      fontWeight: FontWeight.w600,
                      fontSize: 20,
                    ),
                  ),
                ),
                Container(
                  height: 40,
                  child: TextFormField(
                    decoration: InputDecoration(
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(5),
                      ),
                      fillColor: Colors.white,
                      labelText: 'Free search...',
                      labelStyle: TextStyle(
                        color: Colors.grey[600],
                        fontSize: 14,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
                CategorySelection(),
                // Place for Product selection
                Container(
                  height: 40,
                  margin: const EdgeInsets.only(top: 5),
                  padding: const EdgeInsets.all(5),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text(
                        'With delivery',
                        style: TextStyle(
                          color: Colors.grey[600],
                          fontSize: 14,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      SwitchButton(),
                    ],
                  ),
                ),
                FlatButton(
                    onPressed: () {
                      setState(() {
                        searchIsActive = true;
                      });
                    },
                    child: Container(
                      height: 40,
                      decoration: BoxDecoration(
                        color: Colors.primaryBlack,
                        borderRadius: BorderRadius.circular(20),
                      ),
                      child: Center(
                        child: Text(
                          'Search',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 20,
                          ),
                        ),
                      ),
                    ))
              ],
            ),
          ),
          searchIsActive
              ? Expanded(
                  child: Container(
                    decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(20)),
                    child: Column(
                      children: [
                        Container(
                          margin:
                              EdgeInsets.only(bottom: 15, top: 15, left: 20),
                          child: Row(
                            children: [
                              Text(
                                'Search Results',
                                style: TextStyle(
                                  color: Colors.primaryBlack,
                                  fontWeight: FontWeight.w600,
                                  fontSize: 20,
                                ),
                              ),
                            ],
                          ),
                        ),
                        Flexible(child: Results()),
                      ],
                    ),
                  ),
                )
              : Container(),
        ],
      ),
    );
  }
}
