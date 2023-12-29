import 'package:flutter/material.dart';

class OfficeAdddress extends StatelessWidget {
  const OfficeAdddress({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      height: size.height * .068,
      width: size.width * .5,
      child: const Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                Icons.location_on_outlined,
                color: Colors.orange,
              ),
              SizedBox(width: 2),
              Text(
                'Office',
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 16,
                  fontWeight: FontWeight.w700,
                  height: 0.06,
                ),
              ),
              SizedBox(width: 2),
              Icon(
                Icons.arrow_drop_down_sharp,
                color: Colors.grey,
              ),
            ],
          ),
          Text(
            '38/A, 3rd Floor, 18th Main, 22nd Cross Rd, Sector 3, HSR Layout, Bengaluru, Karnataka 560102',
            textAlign: TextAlign.center,
            overflow: TextOverflow.ellipsis,
            style: TextStyle(
              color: Color(0xFF666464),
              fontSize: 12,
              fontWeight: FontWeight.w400,
            ),
          ),
        ],
      ),
    );
  }
}
