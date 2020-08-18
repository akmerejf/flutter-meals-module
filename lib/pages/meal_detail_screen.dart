import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:meal_categories/models/dummy_data.dart';

class MealDetailPage extends StatelessWidget {
  static const String routeName = '/meal-detail';
  final methodChannel = MethodChannel('meals.channel');
  
  Future<void> _startMainActivity() async {
    try {
      final String result =
           await methodChannel.invokeMethod('meals.channel/fromFlutter', "an argument");
    } on PlatformException catch (e) {
      // batteryLevel = "Failed to get battery level: '${e.message}'.";
    }
  }

  @override
  Widget build(BuildContext context) {
    final mealId = ModalRoute.of(context).settings.arguments;
    final selectedMeal = DUMMY_MEALS.firstWhere((meal) => meal.id == mealId);
    methodChannel.setMethodCallHandler((call){
      if(call.method == "meals.channel/fromNative"){
        print("Hello from ${call.method}, with ${call.arguments}");

      }
      
    });
    return Center(
      child: Scaffold(
        appBar: AppBar(title: Text(selectedMeal.title)),
        body: SingleChildScrollView(
          child: Column(
            children: <Widget>[
              Container(
                height: 300,
                width: double.infinity,
                child: Image.network(
                  selectedMeal.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              FlatButton(
                onPressed: () => _startMainActivity(),
                child: Text("Start Main activity"),
              ),
              buildSectionTitle(context, 'Ingredients'),
              buildContainer(
                ListView.builder(
                  itemCount: selectedMeal.ingredients.length,
                  itemBuilder: (ctx, index) => Card(
                    color: Theme.of(context).accentColor,
                    child: Padding(
                      padding:
                          EdgeInsets.symmetric(vertical: 5, horizontal: 10),
                      child: Text(selectedMeal.ingredients[index]),
                    ),
                  ),
                ),
              ),
              buildSectionTitle(context, 'Steps'),
              buildContainer(
                ListView.builder(
                  itemCount: selectedMeal.steps.length,
                  itemBuilder: (ctx, index) => Column(
                    children: <Widget>[
                      ListTile(
                        leading: CircleAvatar(
                          child: Text('# ${(index + 1)}'),
                        ),
                        title: Text(
                          selectedMeal.steps[index],
                        ),
                      ),
                      Divider()
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  Widget buildContainer(Widget child) {
    return Container(
        decoration: BoxDecoration(
          color: Colors.white,
          border: Border.all(color: Colors.grey),
          borderRadius: BorderRadius.circular(10),
        ),
        margin: EdgeInsets.all(10),
        padding: EdgeInsets.all(10),
        height: 200,
        width: 300,
        child: child);
  }

  Container buildSectionTitle(BuildContext context, String title) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      child: Text(title, style: Theme.of(context).textTheme.headline6),
    );
  }
}
