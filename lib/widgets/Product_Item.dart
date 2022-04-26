import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import '../screens/Product_Detail_Screen.dart';

class ProductItem extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final product = Provider.of<Product>(context, listen: false);
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: Stack(
        children: [
          GridTile(
              child: GestureDetector(
                onTap: () {
                  Navigator.of(context).pushNamed(ProductDetailScreen.routeName,
                      arguments: product.id);
                },
                child: Image.network(
                  product.imageUrl,
                  fit: BoxFit.cover,
                ),
              ),
              footer: Container(
                height: MediaQuery.of(context).size.height * 0.05,
                child: GridTileBar(
                  backgroundColor: Color.fromRGBO(0, 0, 0, 0.5),
                  trailing: FittedBox(
                    child: Text(
                      product.price.toString(),
                      style: TextStyle(color: Colors.white),
                      textAlign: TextAlign.end,
                    ),
                  ),
                  title: FittedBox(
                    child: Text(
                      product.title,
                      textAlign: TextAlign.left,
                    ),
                  ),
                ),
              )),
          Positioned(
            top: 5,
            right: 5,
            child: Consumer<Product>(
              builder: ((context, product, child) => GestureDetector(
                    child: Icon(
                      product.isFavorite
                          ? Icons.favorite
                          : Icons.favorite_border,
                      color: Theme.of(context).accentColor,
                    ),
                    onTap: () {
                      product.toggelFavorite();
                    },
                  )),
            ),
          )
        ],
      ),
    );
  }
}
