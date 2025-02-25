import 'package:flutter/material.dart';
import './screens/meal-detail.dart';
import './screens/category_meals_screen.dart';
import './screens/category_screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'FoodApp',
      theme: ThemeData(
        primarySwatch: Colors.pink,
        accentColor: Colors.amber,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            body2: TextStyle(
              color: Color.fromRGBO(20, 51, 51, 1),
            ),
            title: TextStyle(
              fontSize: 20,
              fontFamily: 'RobotoCondensed',
              fontWeight: FontWeight.bold,
            ),
            subtitle: TextStyle(
              fontSize: 15,
              fontFamily: 'Raleway',
            )),
      ),
      home: CategoryList(),
      initialRoute: '/',
      routes: {
        '/categories-meals': (ctx) => CategoryMealsScreen(),
        '/meal-detail' : (ctx) =>  MealDetailScreen() ,
      },
    );
  }
}
