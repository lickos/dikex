import 'package:dikex/Widgets/logo_movement.dart';
import 'package:dikex/Widgets/title_movement.dart';
import 'package:flutter/material.dart';



class MyHomePage extends StatelessWidget {
  const MyHomePage({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      body: SafeArea(
        child: SizedBox(
          width: size.width,
          height: size.height,
          child: Stack(
            children: const [
              LogoMovement(),
              TitleMovement(),
            ],
          ),
        ),
      ),
    );
  }
}

