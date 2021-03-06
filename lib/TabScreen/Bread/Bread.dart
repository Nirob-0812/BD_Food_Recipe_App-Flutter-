import 'package:bdfoods/Details/DetailsPage.dart';
import 'package:bdfoods/FoodData/Food_data.dart';
import 'package:bdfoods/Grid_Tile/Coustom_Grid.dart';
import 'package:flutter/material.dart';

class Bread extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    List BreadFood = Bdfoods["bread"];
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisSpacing: 5, mainAxisSpacing: 5, crossAxisCount: 2),
        itemCount: BreadFood.length,
        itemBuilder: (BuildContext contex, int index) {
          return CoustomGrid(
            onTap: () {
              Navigator.pushNamed(context, DetailsPage.route,
                  arguments: BreadFood[index]);
            },
            imgUrl: BreadFood[index]["image"],
            Title: BreadFood[index]["title"],
            time: BreadFood[index]["Time"],
            ingrident: BreadFood[index]["ingredients"],
            Category: BreadFood[index]["Category"],
            direction: BreadFood[index]["directions"],
          );
        });
  }
}
