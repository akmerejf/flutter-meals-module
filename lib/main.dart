import 'package:flutter/material.dart';
import 'package:meal_categories/pages/meal_categories_page.dart';
import 'package:meal_categories/pages/meal_detail_screen.dart';

import 'pages/category_meals_page.dart';

void main() => runApp(MealCategoriesFeature());

class MealCategoriesFeature extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Meat Categories',
      theme: ThemeData(
          primarySwatch: Colors.pink,
          accentColor: Colors.amber,
          canvasColor: Color.fromRGBO(255, 254, 229, 1),
          fontFamily: 'Raleway',
          textTheme: ThemeData.light().textTheme.copyWith(
              bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
              headline6: TextStyle(
                  fontSize: 20,
                  fontFamily: 'RobotoCondensed',
                  fontWeight: FontWeight.bold))),
      routes: {
        '/': (ctx) => MealCategoriesPage(),
        CategoryMealsPage.routeName: (ctx) => CategoryMealsPage(),
        MealDetailPage.routeName: (ctx) => MealDetailPage(),
      },
      onUnknownRoute: (settings) {
        return MaterialPageRoute(builder: (ctx) => MealCategoriesPage());
      },
    );
  }
}
