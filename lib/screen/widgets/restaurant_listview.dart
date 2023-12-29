import 'package:flutter/material.dart';

class RestaurantListView extends StatelessWidget {
  const RestaurantListView({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return SizedBox(
      width: 335,
      height: 157,
      child: Stack(
        children: [
          Container(
            width: 132,
            height: 157,
            decoration: ShapeDecoration(
              image: const DecorationImage(
                image: NetworkImage(
                    "https://s3-alpha-sig.figma.com/img/05fe/65ca/3f9a06d279b6ad8e65c7381f84a2452c?Expires=1704672000&Signature=KlKDxmTxLjij-~xSAomRHKcVdUPb0eN4rO~9flHZB34aUdyIeiYyiKIt6xAwDnKRjHCUP0ym2B~jSlxw37~GgkdMyyezmkFoecjTgNtiEds9uTnzFtC48VRISQcBcV17VwfdyY7daEA-Llm0hG3RcV1zWv0oW57EAhWVPkOaYDd4CVa5L~LY8T9iaR~p6oC6p5BHpdcqosFatKsb34VrAL9jSAjNsMgUArTsDEgdCXF24yUzjWveHImg1o-qGkZejmTLQs~jKGb-zjcO0aNx52Ao7vrPdD7FKZzdWLov~pSYODp~j2srMr4X6cjmxTOE5TpYEenP3IBNlrKdHYFsQw__&Key-Pair-Id=APKAQ4GOSFWCVNEHN3O4"),
                fit: BoxFit.cover,
              ),
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(12),
              ),
            ),
            child: const Align(
              alignment: Alignment.topRight,
              child: Icon(
                Icons.favorite_border_outlined,
                color: Colors.white,
                size: 28,
              ),
            ),
          ),
          Positioned(
            left: 145,
            top: 37,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Text(
                  'Domino’s Pizza',
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Row(
                  children: [
                    Container(
                      height: size.height * .03,
                      width: size.width * .2,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 243, 243, 243),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: const Center(
                        child: Text(
                          '4.2 ⭐ (10k+)',
                          textAlign: TextAlign.center,
                          style: TextStyle(
                            color: Colors.black,
                            fontSize: 12,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const Text(
                      ' 25 mins',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Colors.black,
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: size.height * 0.010),
                const Text(
                  'Pizzas, Italian, Pastas\nPimple Saudagar',
                  style: TextStyle(
                      color: Color(0xFF666464),
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                      height: .9),
                ),
                SizedBox(height: size.height * 0.020),
                Container(
                  height: 17,
                  width: 90,
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 214, 249, 222),
                    borderRadius: BorderRadius.circular(2),
                  ),
                  child: const Center(
                    child: Text(
                      'FREE DELIVERY',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        color: Color(0xFF11CF24),
                        fontSize: 12,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const Positioned(
            left: 310,
            top: 0,
            child: Icon(
              Icons.more_vert_outlined,
              color: Color.fromARGB(255, 111, 111, 111),
            ),
          ),
        ],
      ),
    );
  }
}
