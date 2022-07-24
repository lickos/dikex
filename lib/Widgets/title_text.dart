import 'package:dikex/Utils/constants.dart';
import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  const TitleText({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        style: DefaultTextStyle.of(context).style,
        children: <TextSpan>[
          TextSpan(
              text: 'ΔH.',
              style: _letterTextStyle(Constants.purple,),),
          TextSpan(
              text: 'K.',
              style: _letterTextStyle(Constants.lightOrange,),),
          TextSpan(
              text: 'E.',
              style: _letterTextStyle(Constants.pink,),),
          TextSpan(
              text: 'X.',
              style: _letterTextStyle(Constants.darkBlue,),),
        ],
      ),
    );
  }

  TextStyle _letterTextStyle(Color letterColor) {
    return TextStyle(
        color: letterColor, fontSize: 40, fontWeight: FontWeight.bold);
  }
}
