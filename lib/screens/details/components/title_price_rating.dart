import 'package:flutter/material.dart';

import '../../../utl/constants_colors.dart';

class TitlePriceRating extends StatelessWidget {
  const TitlePriceRating({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 20),
      child: Row(
        children: <Widget>[
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: <Widget>[
                Text(
                  "Cheese Burger",
                  style: Theme.of(context).textTheme.headlineLarge,
                ),
                SizedBox(height: 10),
              ],
            ),
          ),
          priceTag(context, price: 15),
        ],
      ),
    );
  }

  ClipPath priceTag(BuildContext context, {int? price}) {
    return ClipPath(
      clipper: PricerCliper(),
      child: Container(
        alignment: Alignment.topCenter,
        padding: EdgeInsets.symmetric(vertical: 15),
        height: 66,
        width: 66,
        color: kPrimaryColor,
        child: Text(
          "\$$price",
          style: Theme.of(context)
              .textTheme
              .titleLarge
              ?.copyWith(color: Colors.white, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }
}

class PricerCliper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    Path path = Path();
    double ignoreHeight = 45;
    double height = ignoreHeight;

    path.lineTo(0, height = ignoreHeight);
    path.lineTo(size.width / 2, size.height);
    path.lineTo(size.width, height = ignoreHeight);
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
}
