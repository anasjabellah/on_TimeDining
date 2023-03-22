import 'package:flutter/material.dart';
import 'package:on_dining/utl/constants_colors.dart';
import 'package:on_dining/screens/home/components/item_cart.dart';
import "package:on_dining/dataDb/sqldb.dart";
import '../../details/details_screen.dart';
import '../../menuRestaurant/menu_Restaurant.dart';

class ItemList extends StatelessWidget {





  const ItemList({
    super.key,
  });



  @override
  Widget build(BuildContext context) {


    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
        children: <Widget>[
          ItemCard(
            shopName: 'MocDonalds',
            prees: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return DetailsScreen();
                }),
              );
            },
            svgScr: 'assets/icons/restaurant-cutlery-circular-interface-symbol-with-a-knife-and-a-spoon.svg',
            title: 'Burger & Beer',
          ),
          ItemCard(
            shopName: 'MocDonalds',
            prees: () {},
            svgScr: 'assets/icons/Noir-Creuset-Casserole-Restaurant-Logo.svg',
            title: 'Burger & Beer',
          ),
          ItemCard(
            shopName: 'MocDonalds',
            prees: () {},
            svgScr: 'assets/icons/OK2WEZ0.svg',
            title: 'Burger & Beer',
          ),
        ],
      ),
    );
  }
}



/*ItemCard(
svgScr: snapshot.data![index]['image'],
prees: () {
Navigator.push(
context,
MaterialPageRoute(builder: (context) {
return MenuRestaurant();
}),
);},
title: snapshot.data![index]['image'],
shopName: snapshot.data![index]['name']),
);*/





