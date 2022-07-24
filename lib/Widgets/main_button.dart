import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class MainButton extends StatelessWidget {
  const MainButton({Key? key, required this.onTap, required this.text})
      : super(key: key);

  final VoidCallback onTap;
  final String text;

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onTap,
      child: Text(
        text,
        style: const TextStyle(fontSize: 20),
      ),
      style: ElevatedButton.styleFrom(primary: Colors.red),
    );
  }
}
