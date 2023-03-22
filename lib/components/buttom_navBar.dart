import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class BottomNavBar extends StatelessWidget {
  const BottomNavBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 35),
      height: 75,
      width: double.infinity,
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20),
          topRight: Radius.circular(20),
        ),
        boxShadow: [
          BoxShadow(
            offset: Offset(0, -7),
            blurRadius: 33,
            color: Color(0xFF6DAED9).withOpacity(0.11),
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("icons/home.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("icons/following.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("icons/Glyph.svg"),
          ),
          IconButton(
            onPressed: () {},
            icon: SvgPicture.asset("icons/person.svg"),
          ),
        ],
      ),
    );
  }
}
