import 'package:flutter/material.dart';

class OrderNowContainer extends StatelessWidget {
  const OrderNowContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Container(
      width: size.width * 0.88,
      height: size.height * .2,
      clipBehavior: Clip.antiAlias,
      decoration: ShapeDecoration(
        color: Color(0xFF111E24),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(12),
        ),
      ),
      child: Stack(
        children: [
          Positioned(
            left: 115,
            top: -25,
            child: Container(
              width: 244,
              height: 218,
              decoration: const BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage(
                      "https://s3-alpha-sig.figma.com/img/1f4c/5935/a750b1dbb763d97eecacb260da119d6a?Expires=1704672000&Signature=SxzHSD8-DrBCnNpESofdD64hNIHdmNeq~1gzhMCr~YXwcOekBqGCy3g62nayS9lVp6isC8S5K2yHrD3YNqwHJgWFP7jOo-ODi2tc9nJB9hGOsXmHzJeAG8yYrMNV7LZdBkRNSeqlGD6Ai1E~hYuZZbDJs0AcP-Dp6AvmCm3Ri9lYGh1A0Ut55z7Hl3~0B2yLhQ2TS~Uz7poCu6LRBKcgQSqesfg6vYy7E4og5cje-iFkcP9UoA3DlZvLthp9t5DwczUzk3rmxuiP3V1msseF6hc4t-CN8~yvGKoiF9NLmiW3-mgEEuvizj4F4ssAGxqT2CYxIL6TMr8K1qbjZB3OXQ__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                  fit: BoxFit.fill,
                ),
              ),
            ),
          ),
          const Positioned(
            top: 30,
            left: 18,
            child: Text(
              'Get 50% off on your\nfirst order. ',
              style: TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontFamily: 'Open Sans',
                fontWeight: FontWeight.w700,
              ),
            ),
          ),
          Positioned(
            top: 83,
            left: 18,
            child: ElevatedButton(
              onPressed: () {},
              style: ElevatedButton.styleFrom(
                primary: Colors.deepOrange,
                minimumSize: Size(95, 32),
                elevation: 2,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              child: const Text(
                'Order Now',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 14,
                  fontWeight: FontWeight.w600,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
