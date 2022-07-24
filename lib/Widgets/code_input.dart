import 'package:flutter/material.dart';

class CodeInput extends StatelessWidget {
  final TextEditingController codeController;
  const CodeInput({Key? key, required this.codeController}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(20.0),
      child: SizedBox(
        width: size.width,
        child: TextFormField(
          controller: codeController,
          decoration: const InputDecoration(
              border: UnderlineInputBorder(),
              labelText: 'ΚΩΔΙΚΟΣ',
              icon: Icon(Icons.key),
              iconColor: Color(0xff333333)),
        ),
      ),
    );
  }
}
