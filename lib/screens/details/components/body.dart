import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:on_dining/screens/details/components/title_price_rating.dart';

import '../../../utl/constants_colors.dart';
import 'item_image.dart';
import 'order_button.dart';



class body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return  Column(
        children: [
          ItemImage(imgSrc: "assets/images/chicken-salad-with-vegetables-olives-removebg-preview.png"),
          Expanded(
        child: ItemInfo(),
          ),
        ],
      );
  }
}


class ItemInfo extends StatelessWidget {
  const ItemInfo({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;

    return SingleChildScrollView(
         child : Container(
          padding: EdgeInsets.all(20),
          width: double.infinity,
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(30),
              topRight: Radius.circular(30),
            ),
          ),
          child: Column(
            children: <Widget>[
              shopeName("MacDonalds"),
              TitlePriceRating(),
              Text(
                "détérit, pour ce type d’assemblages complexes, d’analyser de concert l’adhésif et le substrat. C’est dans ce contexte que l’EPCP et les Laboratoires URGO souhaitent accentuer leur collaboration visant à (i) développer une recherc",
                style: TextStyle(height: 1.5, color: kTextLightColor),
              ),
              SizedBox(
                height: size.height * 0.1,
              ),
              OrderButton(
                size: size,
                pres: () {},
              ),
            ],
          ),
        ),
    );
  }


  Row shopeName(String name) {
    return Row(children: <Widget>[
      Icon(
        Icons.location_on,
        color: ksecondaryColor,
      ),
      SizedBox(width: 10),
      Text(name)
    ]);
  }
}
