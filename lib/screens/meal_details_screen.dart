import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class MealDetailsScreen extends StatelessWidget {
  static final routeName = '/meal-details';
  MealDetailsScreen({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments as String;
    return Scaffold(
      appBar: AppBar(title: Text(mealId)),
      body: Center(
        child: Text("DETAil ${mealId}"),
      ),
    );
  }
}
