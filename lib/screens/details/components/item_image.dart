import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ItemImage extends StatelessWidget {
  final String imgSrc;
  const ItemImage({
    super.key,
    required this.imgSrc,
  });

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Image.asset(
      imgSrc,
      height: size.height * 0.35,
      width: double.infinity,
      fit: BoxFit.fill,
    );
  }
}
