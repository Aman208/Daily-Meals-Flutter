import 'package:flutter/material.dart';
import '../dummy_data.dart';
import '../widgets/category_item.dart';
class CategoryList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
         appBar: AppBar(
        title: Text("DeliMeals"),
      ),
          body: Container(
         padding: EdgeInsets.all(20),
          child: GridView.builder(
              gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
                childAspectRatio: 3 / 2,
                crossAxisSpacing: 20,
                mainAxisSpacing: 20,
                maxCrossAxisExtent: 200,
              ),
              itemBuilder: ( ctx , index){
                return CategoryItem(DUMMY_CATEGORIES[index].id ,DUMMY_CATEGORIES[index].title ,DUMMY_CATEGORIES[index].color );
              },
              itemCount: DUMMY_CATEGORIES.length,)),
    );
  }
}
