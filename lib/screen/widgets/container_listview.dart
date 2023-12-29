import 'package:flutter/material.dart';

class ContainerListviewBuilder extends StatelessWidget {
  ContainerListviewBuilder(
      {super.key, required this.image, required this.text});
  final String image;
  final String text;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          height: 87,
          width: 87,
          decoration: ShapeDecoration(
            color: Color.fromARGB(255, 221, 221, 221),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(12),
            ),
          ),
          child: Center(
            child: Container(
              height: 69,
              width: 69,
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(image),
                  fit: BoxFit.cover,
                ),
              ),
            ),
          ),
        ),
        Text(
          text,
          style: TextStyle(
            color: Color(0xFF666464),
            fontSize: 14,
            fontWeight: FontWeight.w500,
            letterSpacing: 0.12,
          ),
        ),
      ],
    );
  }
}
