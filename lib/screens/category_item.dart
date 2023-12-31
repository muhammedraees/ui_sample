import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class CategoryItem extends StatelessWidget {
  // const CategoryTwo({super.key});

  final String title;
  final Color color;

  CategoryItem(this.title,this.color);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(15),
      child: Text(title),
      decoration: BoxDecoration(
        gradient: LinearGradient(
          colors:[
            color.withOpacity(0.7),
            color
          ],
          begin: Alignment.topLeft,
          end: Alignment.bottomRight
           ),
           borderRadius: BorderRadius.circular(15)
      ),
    );
  }
}