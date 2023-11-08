import 'package:flutter/cupertino.dart';

class ReusableCard extends StatelessWidget {
  ReusableCard({required this.colour, this.childWidget});

  final Color colour;
  final childWidget;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: childWidget,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(10.0),
        color: colour,
      ),
      margin: const EdgeInsets.all(15.0),
    );
  }
}