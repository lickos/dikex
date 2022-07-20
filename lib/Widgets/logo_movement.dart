import 'package:flutter/material.dart';
import 'package:simple_animations/simple_animations.dart';

class LogoMovement extends StatelessWidget {
  const LogoMovement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return PlayAnimation<double?>(
        tween: Tween<double>(begin: 0.0, end: size.height - 200),
        duration: const Duration(seconds: 1), // specify duration
        builder: (context, child, value) {
          return Positioned(
            bottom: value,
            left: (size.width / 2) - 20,
            child: Image.asset('images/logo.png' 
            ),
          );
        });
  }
}
