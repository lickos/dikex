import 'package:dikex/Screen/week_planner.dart';
import 'package:dikex/Widgets/station_button.dart';
import 'package:flutter/material.dart';

class Nerompogies extends StatelessWidget {
  const Nerompogies({Key? key}) : super(key: key);

  static const routeName = 'nerompogies';

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
        child: Stack(
          children: [
            Positioned(
              top: 30,
              child: SizedBox(
                width: size.width,
                child: Image.asset(
                  'images/nerompogies.jpg',
                  width: size.width,
                ),
              ),
            ),
            Positioned(
              left: 15,
              bottom: size.height / 2 - 150,
              child: SizedBox(
                height: 150,
                width: 150,
                child: StationButton(
                    buttonText: "ΕΒΔΟΜΑΔΙΑΙΟ\nΠΡΟΓΡΑΜΜΑ",
                    onPressed: () {
                      navigate(WeeklyPlanner.routeName, context);
                    },
                    imageName: 'images/buttons.webp',),
              ),
            ),
            Positioned(
              left: 15,
              bottom: 45,
              child: SizedBox(
                height: 150,
                width: 150,
                child: StationButton(
                  buttonText: "ΑΝΑΚΟΙΝΩΣΕΙΣ",
                  onPressed: () {},
                  imageName: 'images/announcement.webp',
                ),
              ),
            ),
            Positioned(
              right: 15,
              bottom: size.height / 2 - 150,
              child: SizedBox(
                height: 150,
                width: 150,
                child: StationButton(
                  buttonText: "ΔΙΑΤΡΟΦΟΛΟΓΙΟ",
                  onPressed: () {},
                  imageName: 'images/eating.webp',
                ),
              ),
            ),
            Positioned(
              right: 15,
              bottom: 45,
              child: SizedBox(
                height: 150,
                width: 150,
                child: StationButton(
                  buttonText: "CHAT",
                  onPressed: () {},
                  imageName: 'images/chat.webp',
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  navigate(String myRouteName, BuildContext context) {
    Navigator.of(context).pushNamed(myRouteName);
  }
}
