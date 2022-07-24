import 'package:dikex/Mocks/mocks.dart';
import 'package:dikex/Models/event.dart';
import 'package:dikex/Utils/constants.dart';
import 'package:dikex/Widgets/weekly_tile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_spinkit/flutter_spinkit.dart';

class WeeklyPlanner extends StatefulWidget {
  const WeeklyPlanner({Key? key}) : super(key: key);

  static const routeName = 'weekly';

  @override
  State<WeeklyPlanner> createState() => _WeeklyPlannerState();
}

class _WeeklyPlannerState extends State<WeeklyPlanner> {
  List<MyEvents> weeklyEvents = [];

  @override
  void initState() {
    getEvents();
    super.initState();
  }

  getEvents() {
    setState(() {
      weeklyEvents = Mocks.events;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Constants.pink,
        centerTitle: true,
        title: const Text(
          'ΝΕΡΟΜΠΟΓΙΕΣ ΚΑΙ ΝΟΤΕΣ',
          style: TextStyle(fontFamily: 'Greek-Hand'),
        ),
      ),
      body: weeklyEvents.isNotEmpty
          ? SingleChildScrollView(
              child: Column(
                children: weeklyEvents
                    .map(
                      (e) => WeeklyTile(
                        date: e.date,
                        title: e.title,
                        category: e.category,
                        description: e.description,
                      ),
                    )
                    .toList(),
              ),
            )
          : const Center(
              child: SpinKitFoldingCube(
                color: Constants.purple,
              ),
            ),
    );
  }
}
