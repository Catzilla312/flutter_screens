import 'dart:ui';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/container.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter_screens/categoty_meals_screen.dart';

class CategoryItem extends StatelessWidget {
  final String id;
  final String title;
  final Color color;
  CategoryItem({Key key, this.title, this.color, this.id}) : super(key: key);
  void selectCategory(BuildContext ctx) {
    Navigator.of(ctx).pushNamed(
      CategoryMealsScreen.routeName,
      arguments: {
        'id': id,
        'title': title,
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (() {
        selectCategory(context);
      }),
      splashColor: Theme.of(context).primaryColor,
      borderRadius: BorderRadius.circular(20),
      child: Container(
        padding: EdgeInsets.all(20),
        child: Text(title),
        decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              color.withOpacity(.5),
              color,
            ],
            begin: Alignment.topLeft,
            end: Alignment.bottomRight,
          ),
          borderRadius: BorderRadius.circular(20),
        ),
      ),
    );
  }
}
