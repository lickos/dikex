import 'package:flutter/material.dart';

class StationButton extends StatelessWidget {
  final String buttonText;
  final VoidCallback onPressed;
  final String imageName;

  const StationButton({
    Key? key,
    required this.buttonText,
    required this.onPressed,
    required this.imageName,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onPressed,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Image.asset(imageName),
          Text(
            buttonText,
            textAlign: TextAlign.center,
            style: const TextStyle(fontFamily: 'Greek-Hand', fontSize: 18),
          ),
        ],
      ),
    );
  }
}
