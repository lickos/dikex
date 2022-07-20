import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

class TitleMovement extends StatelessWidget {
  const TitleMovement({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final Size size = MediaQuery.of(context).size;
    return Positioned(
      top: 300,
      left: size.width/2,
      child: SizedBox(
        width: size.width,
        height: 100,
        child: DefaultTextStyle(
          style: TextStyle(fontSize: 40),
          child: AnimatedTextKit(
            animatedTexts: [
              WavyAnimatedText('Hello World'),
            ],
            isRepeatingAnimation: true,
            onTap: () {
              print("Tap Event");
            },
          ),
        ),
      ),
    );
  }
}
