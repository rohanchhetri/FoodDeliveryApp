import 'package:flutter/material.dart';

class PopularCategoryWidget extends StatelessWidget {
  final String image;
  final String cuisine;
  const PopularCategoryWidget({
    super.key,
    required this.image
    ,required this.cuisine
  });

  @override
  Widget build(BuildContext context) {
    return  SizedBox(
      height: 150,
      width: 100,
      child: Column(
        children: [
          Expanded(
            child: CircleAvatar(radius: 50,
              backgroundImage: NetworkImage(image),
            ),
          ),
          Text(cuisine)
        ],
      ),
    );
  }
}