import 'package:dikex/Utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

class WeeklyTile extends StatelessWidget {
  final DateTime date;
  final String category;
  final String title;
  final String description;
  const WeeklyTile({
    Key? key,
    required this.date,
    required this.title,
    required this.category,
    required this.description,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Padding(
      padding: const EdgeInsets.all(10.0),
      child: Container(
        width: size.width,
        padding: const EdgeInsets.all(10.0),
        decoration: BoxDecoration(
          color: Colors.amber[100],
          border: Border.all(color: Constants.pink),
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Text('Text Tile'),
      ),
    );
  }
}
