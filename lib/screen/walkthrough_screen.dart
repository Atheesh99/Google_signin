import 'package:flutter/material.dart';
import 'package:food/screen/widgets/walkthought_textwidget.dart';

class WalkThrough extends StatelessWidget {
  const WalkThrough({super.key});

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(8),
          child: Center(
            child: Column(
              children: [
                Container(
                  width: size.width * .95,
                  height: size.height * .61,
                  decoration: const BoxDecoration(
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(15),
                      topRight: Radius.circular(15),
                    ),
                    image: DecorationImage(
                      image: NetworkImage(
                          "https://foodtank.com/wp-content/uploads/2017/10/food-tank-AI-1-e1508437670324-1024x614.jpg"),
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
                Container(
                  width: size.width * .95,
                  height: size.width * .7,
                  decoration: const BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.only(
                        bottomLeft: Radius.circular(15),
                        bottomRight: Radius.circular(15)),
                  ),
                  child: const TestWidget(),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
