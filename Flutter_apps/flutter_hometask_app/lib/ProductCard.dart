import 'package:flutter/material.dart';

class ProductCard extends StatefulWidget {
  @override
  _ProductCardState createState() => _ProductCardState();
}

class _ProductCardState extends State<ProductCard> {
  bool isFavor = false;
  bool isAddedToCard = false;

  @override
  Widget build(BuildContext context) {
    return Card(
      elevation: 3,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Container(
                margin: const EdgeInsets.all(5),
                height: 60,
                width: 60,
                decoration: BoxDecoration(
                  color: Colors.lightBlueAccent,
                  borderRadius: BorderRadius.circular(20),
                  border: Border.all(color: Colors.grey[600]),
                ),
              ),
              Container(
                height: 60,
                decoration: BoxDecoration(

                ),
                margin: const EdgeInsets.all(5),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Text('iPhone 11 pro 64Gb'),
                    Text('89 990руб.',
                    style: TextStyle(
                      color: Colors.primaryBlack,
                      fontWeight: FontWeight.w700,
                      fontSize: 15,
                      ),
                    ),
                  ]
                ),
              ),
            ],
          ),
          Container(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                _favoriteButton(),
                _addToCard(),
              ],
            ),
          )
        ],
      ),
    );
  }

  _favoriteButton() => isFavor
      ? IconButton(
          icon: Icon(
            Icons.favorite,
            color: Colors.redAccent,
          ),
          onPressed: () {
            setState(() {
              if (isFavor == true) {
                isFavor = false;
              } else {
                isFavor = true;
              }
            });
          })
      : IconButton(
          icon: Icon(
            Icons.favorite,
            color: Colors.grey[200],
          ),
          onPressed: () {
            setState(() {
              if (isFavor == true) {
                isFavor = false;
              } else {
                isFavor = true;
              }
            });
          });

  _addToCard() => isAddedToCard
      ? IconButton(
          icon: Icon(
            Icons.shopping_cart,
            color: Colors.greenAccent,
          ),
          onPressed: () {
            setState(() {
              if (isAddedToCard == true) {
                isAddedToCard = false;
              } else {
                isAddedToCard = true;
              }
            });
          })
      : IconButton(
          icon: Icon(
            Icons.add_shopping_cart,
            color: Colors.grey[200],
          ),
          onPressed: () {
            setState(() {
              if (isAddedToCard == true) {
                isAddedToCard = false;
              } else {
                isAddedToCard = true;
              }
            });
          });
}
