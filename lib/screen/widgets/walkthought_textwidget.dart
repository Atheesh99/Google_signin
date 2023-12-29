import 'package:flutter/material.dart';
import 'package:food/screen/home_screen.dart';
import 'package:food/screen/widgets/signin_button.dart';
import 'package:food/service/google_service.dart';

class TestWidget extends StatelessWidget {
  const TestWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Column(
      children: [
        SizedBox(height: size.height * .065),
        const Text(
          'Dive in without delay',
          textAlign: TextAlign.center,
          style: TextStyle(
            color: Colors.black,
            fontSize: 20,
            fontWeight: FontWeight.w700,
            // height: 0
          ),
        ),
        SizedBox(height: size.height * .01),
        SizedBox(
          width: size.width * .78,
          child: const Text(
            'Lorem ipsum dolor sit amet consectetur. Neque et nulla et.',
            textAlign: TextAlign.center,
            style: TextStyle(
              color: Color(0xFF7A7A7A),
              fontSize: 16,
              fontWeight: FontWeight.w400,
              height: 0,
            ),
          ),
        ),
        SizedBox(height: size.height * .060),
        InkWell(
            onTap: () {
              signInWithGoogle(context, (userCredential) {
                if (userCredential != null) {
                  Navigator.pushReplacement(
                    context,
                    MaterialPageRoute(builder: (context) => HomeScreen()),
                  );
                }
              });
            },
            child: const SigninButton()),
      ],
    );
  }
}
