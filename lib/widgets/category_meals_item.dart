import 'package:flutter/material.dart';
import 'package:food_app/models/meal.dart';

class CategoryMealsItem extends StatelessWidget {
  final String id;
  final String title;
  final String imageUrl;
  final int duration;
  final Affordability affordability;
  final Complexity complexity;

  CategoryMealsItem(
      {@required this.id,
      @required this.title,
      @required this.imageUrl,
      @required this.duration,
      @required this.affordability,
      @required this.complexity});

  String get affordabilityText {
    switch (affordability) {
      case Affordability.Affordable:
        return 'Affordable';
        break;
      case Affordability.Pricey:
        return 'Pricey';
        break;
      case Affordability.Luxurious:
        return 'Luxurious';
        break;
      default:
        return 'Unknown';
    }
  }

  String get complexicityText {
    switch (complexity) {
      case Complexity.Simple:
        return 'Simple';
        break;
      case Complexity.Hard:
        return 'HArd';
        break;
      case Complexity.Challenging:
        return 'Challenging';
        break;
      default:
        return 'Unknown';
    }
  }

  void _forwardToMealDetail(BuildContext ctx) {
    Navigator.of(ctx).pushNamed('/meal-detail', arguments: id);
  }

  @override
  Widget build(BuildContext context) {
    return InkWell(
        onTap: () {_forwardToMealDetail(context);},
        highlightColor: Colors.deepOrange,
        child: Container(
            child: Card(
                margin: EdgeInsets.symmetric(vertical: 15),
                elevation: 10,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(15)),
                child: Column(
                  children: <Widget>[
                    Stack(
                      children: <Widget>[
                        ClipRRect(
                          child: Image.network(imageUrl),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(15),
                            topRight: Radius.circular(15),
                          ),
                        ),
                        Positioned(
                          bottom: 20,
                          right: 10,
                          child: Container(
                            width: 320,
                            padding: EdgeInsets.symmetric(
                                horizontal: 20, vertical: 10),
                            color: Colors.black54,
                            child: Text(
                              title,
                              style: TextStyle(
                                  color: Colors.white70,
                                  fontSize: 20,
                                  fontWeight: FontWeight.bold),
                              softWrap: true,
                              overflow: TextOverflow.fade,
                            ),
                          ),
                        )
                      ],
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: <Widget>[
                        Container(
                          child: FlatButton.icon(
                              onPressed: null,
                              icon: Icon(
                                Icons.schedule,
                                color: Colors.black,
                              ),
                              label: Text(
                                duration.toString(),
                                style: Theme.of(context).textTheme.subtitle,
                              )),
                        ),
                        Container(
                          child: FlatButton.icon(
                              onPressed: null,
                              icon: Icon(
                                Icons.work,
                                color: Colors.black,
                              ),
                              label: Text(
                                complexicityText,
                                style: Theme.of(context).textTheme.subtitle,
                              )),
                        ),
                        Container(
                          child: FlatButton.icon(
                              onPressed: null,
                              icon: Icon(
                                Icons.attach_money,
                                color: Colors.black,
                              ),
                              label: FittedBox(
                                  child: Text(
                                affordabilityText,
                                style: Theme.of(context).textTheme.subtitle,
                              ))),
                        ),
                      ],
                    )
                  ],
                ))));
  }
}
