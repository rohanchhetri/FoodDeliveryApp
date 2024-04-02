import 'package:flutter/material.dart';

class PopularItemWidget extends StatelessWidget {
  final String image;
  final String name;
  final String description;
  final String rating;
  final String review;
  const PopularItemWidget(
      {super.key,
      required this.image,
      required this.name,
      required this.description,
      required this.rating,
      required this.review});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(left: 10, right: 10,bottom: 8),
      child: Card(
        elevation: 0.5,
        shadowColor: Colors.grey,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 18, right: 18, bottom: 14),
              child: Image.network(image),
            ),
            ListTile(
              title: Text(name),
              subtitle: Text(
                description,
                overflow: TextOverflow.ellipsis,
                maxLines: 2,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 14, bottom: 10),
              child: Row(
                children: [Text(rating),  Padding(
                  padding: const EdgeInsets.only(left: 8,right: 8),
                  child: Icon(Icons.star, color: Colors.green.shade500),
                ), Text(review)],
              ),
            )
          ],
        ),
      ),
    );
  }
}
