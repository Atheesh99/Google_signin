import 'package:flutter/material.dart';

class CustomBottomnavigation extends StatelessWidget {
  const CustomBottomnavigation({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.only(left: 8, right: 8, bottom: 8),
      child: Container(
        height: size.height * .083,
        decoration: BoxDecoration(
          boxShadow: [
            BoxShadow(
              color: Colors.black.withOpacity(0.2),
              spreadRadius: 1,
              blurRadius: 4,
              offset: Offset(0, -2),
            ),
          ],
          color: Colors.white,
          borderRadius: const BorderRadius.only(
            bottomLeft: Radius.circular(15),
            bottomRight: Radius.circular(15),
          ),
        ),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          bottom_text_icon(
              iconData: Icons.home_outlined, text: 'Home', color: Colors.red),
          bottom_text_icon(
              iconData: Icons.arrow_circle_down_outlined, text: 'Dicover'),
          bottom_text_icon(
              iconData: Icons.account_circle_outlined, text: 'Profile')
        ]),
      ),
    );
  }

  Column bottom_text_icon(
      {required IconData iconData, Color? color, required String text}) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Icon(
          iconData,
          size: 28,
          color: color ?? Colors.grey,
        ),
        Text(
          text,
          style: TextStyle(color: color ?? Colors.grey),
        )
      ],
    );
  }
}
