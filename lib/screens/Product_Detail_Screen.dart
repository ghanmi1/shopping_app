import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import '../providers/cart.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/ProductDetailScreen';
  @override
  Widget build(BuildContext context) {
    final productId = ModalRoute.of(context).settings.arguments as String;
    final loadedProduct = Provider.of<Products>(context).findById(productId);
    final cart = Provider.of<Cart>(context, listen: false);
    final mediaqueryP =
        MediaQuery.of(context).size.height - MediaQuery.of(context).padding.top;

    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: Column(children: [
        Container(
          child: Text(
            loadedProduct.title,
            style: Theme.of(context).textTheme.headline6,
          ),
        ),
        SizedBox(
          height: mediaqueryP * 0.01,
        ),
        Container(
          child: Text(loadedProduct.price.toString(),
              style: Theme.of(context).textTheme.headline6),
        ),
        SizedBox(
          height: mediaqueryP * 0.01,
        ),
        Card(
          shape:
              RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
          elevation: 4,
          margin: EdgeInsets.all(8),
          child: Stack(children: [
            ClipRRect(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(10),
                topRight: Radius.circular(10),
              ),
              child: Image.network(
                loadedProduct.imageUrl,
                height: mediaqueryP * 0.4,
                width: double.infinity,
                fit: BoxFit.cover,
              ),
            ),
            Positioned(
                top: 5,
                right: 5,
                child: ChangeNotifierProvider.value(
                  value: loadedProduct,
                  child: Consumer<Product>(
                    builder: (context, value, child) => FlatButton(
                      child: Icon(
                        value.isFavorite
                            ? Icons.favorite
                            : Icons.favorite_border,
                        color: Theme.of(context).accentColor,
                      ),
                      onPressed: () => value.toggelFavorite(),
                    ),
                  ),
                ))
          ]),
        ),
        SizedBox(
          height: mediaqueryP * 0.01,
        ),
        Container(
          child: RaisedButton(
            child: Text('Add to cart ',
                style: Theme.of(context).textTheme.headline6),
            onPressed: () {
              cart.addItem(
                  loadedProduct.id, loadedProduct.title, loadedProduct.price);
            },
          ),
        )
      ]),
    );
  }
}
