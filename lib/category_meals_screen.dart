import 'package:flutter/material.dart';

class CategoryMealsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    var argRoute = ModalRoute.of(context).settings.arguments as Map<String , String> ;
     final String argId = argRoute['id'];
     final String argtitle = argRoute['title'];


    return Scaffold(
      appBar: AppBar(
        title: Text(argtitle),
      ),
      body: Container(
        child: Text("Testing"),
      ),
    );
  }
}
