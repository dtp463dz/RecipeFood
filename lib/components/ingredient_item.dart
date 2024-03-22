import 'package:flutter/material.dart';

class IngredientItem extends StatelessWidget {
  final String quantity, measure, food, imageUrl;
  const IngredientItem({super.key,
    required this.quantity,
    required this.measure,
    required this.food,
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    final w=MediaQuery.of(context).size.width;
    final h=MediaQuery.of(context).size.height;
    return Container(

      margin: EdgeInsets.symmetric(vertical: h*.01, horizontal: w*.033),
      padding: EdgeInsets.only(
        top: h*.008,
        bottom: h*.033,
        left: h*.008,
        right: w*.08,
      ),

      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: [
          BoxShadow(
            color: Colors.grey.withOpacity(.2),
            blurRadius: 5,
            spreadRadius: 2,
            offset: const Offset(0,3),
          )
        ]
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Image.network(imageUrl, width: w*.2,height: h*.1,fit: BoxFit.cover,),
          ),
        ],
      ),
    );
  }
}
