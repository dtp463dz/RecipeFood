import 'package:flutter/material.dart';

import '../screens/all_recipe.dart';

class RecipeCategoryView extends StatelessWidget {
  final String name, image;
  const RecipeCategoryView({super.key, required this.name, required this.image});

  @override
  Widget build(BuildContext context) {
    final w=MediaQuery.of(context).size.width;
    final h=MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: (){
        Navigator.push(context,
          MaterialPageRoute(builder: (context) => AllRecipe(recipe: name)),
        );
      },
      child: SizedBox(
        height: h*.105, width: w*.2,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              height: h*.07,
              width: w*.15,
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                image: DecorationImage(
                    image: AssetImage(image),
                    fit: BoxFit.fill,
                )
              ),
            ),
            Center(
              child: Text(
                name,
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Colors.black45,
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }
}