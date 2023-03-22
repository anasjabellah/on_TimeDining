import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import '../../../utl/constants_colors.dart';
import '../../checkout/checkout.dart';


class OrderButton extends StatelessWidget {
  const OrderButton({
    super.key,
    required this.size,
    required this.pres,
  });

  final Size size;
  final Function pres;

  @override
  Widget build(BuildContext context) {
    var pres2 = pres;
    return Container(
      padding: EdgeInsets.all(10),
      width: size.width * 0.8,
      decoration: BoxDecoration(
          color: kPrimaryColor, borderRadius: BorderRadius.circular(10)),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) {
                return CheckOut();
              }),
            );
          },
          child: Padding(
            padding: const EdgeInsets.all(10.0),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                SvgPicture.asset("assets/icons/bag.svg"),
                SizedBox(
                  width: 10,
                ),
                Text(
                  "Order Now",
                  style: TextStyle(
                      color: Colors.white,
                      fontWeight: FontWeight.bold,
                      fontSize: 14),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
