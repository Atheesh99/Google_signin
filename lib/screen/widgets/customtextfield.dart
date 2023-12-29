import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  const CustomTextField({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * .87,
      height: 53,
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 14),
      decoration: ShapeDecoration(
        color: Colors.white,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
        shadows: const [
          BoxShadow(
            color: Color(0x3F000000),
            blurRadius: 4,
            offset: Offset(0, 0),
            spreadRadius: 0,
          )
        ],
      ),
      child: TextFormField(
        readOnly: true,
        decoration: const InputDecoration(
          hintText: 'Restaurant name or a dish name  ',
          hintStyle: TextStyle(color: Colors.grey, fontWeight: FontWeight.w400),
          prefixIcon: Icon(
            Icons.search_rounded,
            size: 28,
          ),
          prefixIconColor: Colors.deepOrange,
          suffixIcon: Icon(
            Icons.format_align_center,
            size: 23,
          ),
          suffixIconColor: Colors.grey,
          border: InputBorder.none,
          contentPadding: EdgeInsets.only(top: 23),
        ),
      ),
    );
  }
}
