import 'package:flutter/material.dart';

class ProductItem extends StatelessWidget {
  final String title;
  final String id;
  final String imageUrl;
  ProductItem({this.id, this.imageUrl, this.title});

  @override
  Widget build(BuildContext context) {
    return GridTile(
        child: Image.network(
          imageUrl,
          fit: BoxFit.cover,
        ),
        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
            icon: Icon(Icons.favorite),
            onPressed: () {},
          ),
          trailing:
              IconButton(onPressed: () {}, icon: Icon(Icons.shopping_cart)),
          title: Text(
            title,
            textAlign: TextAlign.center,
          ),
        ));
  }
}
