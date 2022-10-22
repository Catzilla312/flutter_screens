import 'package:flutter/material.dart';
import 'package:flutter_screens/dummy-data.dart';
import 'package:flutter_screens/widgets/meal_item.dart';

class CategoryMealsScreen extends StatelessWidget {
  static final routeName = '/categories-meals';
  // final String categoryId;
  // final String categoryTitle;

  // const CategoryMealsScreen(this.categoryId, this.categoryTitle);

  @override
  Widget build(BuildContext context) {
    final routeArgs =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final categoryTitle = routeArgs['title'];
    final categoryId = routeArgs['id'];
    final catergoryMeals = DUMMY_MEALS.where(
      (meal) {
        return meal.categories.contains(categoryId);
      },
    ).toList();
    return Scaffold(
      appBar: AppBar(
        title: Text(categoryTitle),
      ),
      body: ListView.builder(
        itemBuilder: ((context, index) {
          return MealItem(
            affordability: catergoryMeals[index].affordability,
            complexity: catergoryMeals[index].complexity,
            duration: catergoryMeals[index].duration,
            imageUrl: catergoryMeals[index].imageUrl,
            title: catergoryMeals[index].title,
            id: catergoryMeals[index].id,
          );
        }),
        itemCount: catergoryMeals.length,
      ),
    );
  }
}
