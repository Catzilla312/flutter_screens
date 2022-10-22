import 'package:flutter/material.dart';
import 'package:flutter_screens/screens/categories_screen.dart';
import 'package:flutter_screens/screens/categoty_meals_screen.dart';
import 'package:flutter_screens/screens/meal_details_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'DeliMeals',
      theme: ThemeData(
          primarySwatch: Colors.blue,
          fontFamily: "Railway",
          textTheme: ThemeData.light().textTheme.copyWith(
                  bodyText1: TextStyle(
                color: Color.fromRGBO(20, 51, 51, 1),
              ))),
      home: CategiriesScreen(),
      routes: {
        CategoryMealsScreen.routeName: ((context) {
          return CategoryMealsScreen();
        }),
        MealDetailsScreen.routeName: ((context) {
          return MealDetailsScreen();
        })
      },
    );
  }
}
