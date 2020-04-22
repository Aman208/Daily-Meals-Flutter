import 'package:flutter/material.dart';
import '../widgets/category_meals_item.dart';
import '../dummy_data.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var argRoute =
        ModalRoute.of(context).settings.arguments as Map<String, String>;
    final String argId = argRoute['id'];
    final String argtitle = argRoute['title'];
    final filterMeals = DUMMY_MEALS.where((meal) {
      return meal.categories.contains(argId);
    }).toList();

    return Scaffold(
      appBar: AppBar(
        title: Text(argtitle),
      ),
      body: Container(
        margin: EdgeInsets.all(10),
        child: ListView.builder(
          itemBuilder: (ctx, index) {
            return CategoryMealsItem(
              id : filterMeals[index].id ,
              title: filterMeals[index].title,
              imageUrl: filterMeals[index].imageUrl,
              duration: filterMeals[index].duration,
              affordability: filterMeals[index].affordability,
              complexity: filterMeals[index].complexity,
            );
          },
          itemCount: filterMeals.length,
        ),
      ),
    );
  }
}
