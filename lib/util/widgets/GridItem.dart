import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class GridItem extends StatelessWidget {
  final String imagePath;
  final String title;

  const GridItem({required this.imagePath, required this.title, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Image.asset(
            imagePath,
            height: 40,
            width: 40,
            fit: BoxFit.contain,
          ),
          SizedBox(height: 8),
          Text(title, style: TextStyle(fontSize: 16)),
        ],
      ),
    );
  }
}
