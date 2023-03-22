import 'package:flutter/material.dart';
import 'package:on_dining/components/search_box.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:iconsax/iconsax.dart';
import 'package:on_dining/screens/home/components/restaurants_list.dart';
import 'package:on_dining/screens/home/components/discount_card.dart';
import "package:on_dining/dataDb/sqldb.dart";



class Body extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SearchBox(onChanged: (value) {}),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Restaurants",style: GoogleFonts.poppins(fontSize: 18)),
                Text("View All", style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w200)),
              ],
            ),
          ),
          ItemList(),
          discounts(),
        ],

      ),
    );
  }
}
