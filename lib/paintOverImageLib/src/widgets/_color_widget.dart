import 'package:flutter/material.dart';

class ColorItem extends StatelessWidget {
  const ColorItem({
    required this.color,
    required this.onTap,
    this.isSelected = false,
    Key? key,
  }) : super(key: key);

  final Color color;
  final VoidCallback onTap;
  final bool isSelected;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Container(
          padding: const EdgeInsets.all(2),
          decoration: BoxDecoration(
            color: isSelected ? Colors.white70 : Colors.transparent,
            shape: BoxShape.circle,
            border: Border.all(
              color: isSelected ? Colors.black : Colors.grey[200]!,
            ),
          ),
          child: CircleAvatar(
              radius: isSelected ? 16 : 12, backgroundColor: color),
        ),
      ),
    );
  }
}

const List<Color> editorColors = [
  Colors.black,
  Colors.white,
  Colors.red,
  Colors.grey,
  Colors.teal,
  Colors.cyan,
  Colors.blue,
  Colors.blueAccent,
  Colors.greenAccent,
  Colors.green,
  Colors.pink,
  Colors.yellow,
  Colors.orange,
  Colors.brown,
];
class ColorMode{
  final Color centerLaneColor =Colors.red ;
  final Color rightLaneColor = Colors.blue;
  final Color leftLaneColor = Colors.yellow;
  final Color redLightRectColor = Colors.white;
  final Color centerDirectColor = Colors.red;
  final Color rightDirectColor = Colors.blue;
  final Color leftDirectColor = Colors.yellow;
}
