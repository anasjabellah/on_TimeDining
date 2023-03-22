import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../details/details_screen.dart';



class Body extends StatelessWidget {

  var data = [
    {
      'icon':
      'assets/images/stir-fried-noodle-pork-basil.jpg',
      'title': "Netflix",
      'subscription': "Month subscription",
      'amount': r'$123'
    },
    {
      'icon':
      'assets/images/stir-fried-noodle-pork.jpg',
      'title': "Netflix",
      'subscription': "Month subscription",
      'amount': r'$13'
    },
    {
      'icon':
      'assets/images/chicken-salad-with-vegetables-olives.jpg',
      'title': "Netflix",
      'subscription': "Month subscription",
      'amount': r'$23'
    },
  ];

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.all(20),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text("Menu Restaurants",style: GoogleFonts.poppins(fontSize: 18)),
                Text("View All", style: GoogleFonts.poppins(fontSize: 12, fontWeight: FontWeight.w200)),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: ListView.builder(
                shrinkWrap: true,
                itemCount: data.length,
                itemBuilder: ((context, index) => ListTile(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) {
                        return DetailsScreen();
                      }),
                    );
                  },
                  leading: Container(
                    width: 110,
                    height: 110,
                    decoration: BoxDecoration(
                      shape: BoxShape.circle,
                      image: DecorationImage(
                          image:  AssetImage( data[index]['icon'].toString()),
                          fit: BoxFit.fill
                      ),
                    ),
                  ),

                  title: Text(
                    data[index]['title'].toString(),
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  subtitle: Text(
                    data[index]['subscription'].toString(),
                    style: GoogleFonts.poppins(
                      fontSize: 15,
                      fontWeight: FontWeight.w200,
                    ),
                  ),
                  trailing: Text(
                    data[index]['amount'].toString(),
                    style: GoogleFonts.poppins(color: Colors.black),
                  ),
                ))),
          ),
        ],
      ),
    );
  }
}