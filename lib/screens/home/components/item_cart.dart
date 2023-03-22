import 'package:flutter/material.dart';
import 'package:on_dining/utl/constants_colors.dart';
import 'package:flutter_svg/flutter_svg.dart';
import "package:on_dining/dataDb/sqldb.dart";
import '../../menuRestaurant/menu_Restaurant.dart';


class ItemCard extends StatelessWidget {


  final String title, shopName, svgScr;
  final Function prees;
  const ItemCard({
    super.key,
    required this.title,
    required this.shopName,
    required this.svgScr,
    required this.prees,
  });




  @override
  Widget build(BuildContext context) {

    return Container(
      margin: EdgeInsets.only(left: 20, right: 20, bottom: 20, top: 20),
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10),
          boxShadow: [
            BoxShadow(
              offset: Offset(0, 4),
              blurRadius: 20,
              color: Color(0xFFBBCCE1).withOpacity(0.32),
            )
          ]),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
           Navigator.push(
             context,
             MaterialPageRoute(builder: (context) {
               return MenuRestaurant();
             }),
           );
          },
          child: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
              children: <Widget>[
                Container(
                  padding: EdgeInsets.all(25),
                  decoration: BoxDecoration(
                    color: kPrimaryColor.withOpacity(0.13),
                    shape: BoxShape.circle,
                  ),
                  child: SvgPicture.asset(svgScr, width: 100),
                ),
                SizedBox(height: 10),
                Text(title),
                SizedBox(height: 10),
                Text(shopName, style: TextStyle(fontSize: 12))
              ],
            ),
          ),
        ),
      ),
    );
  }
}
