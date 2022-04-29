import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../widgets/Drawer_Main.dart';
import '../providers/products.dart';
import '../widgets/Product_Item.dart';

class FavoriteScreen extends StatefulWidget {
  static const routeName = '/favoritescreen';

  @override
  State<FavoriteScreen> createState() => _FavoriteScreenState();
}

class _FavoriteScreenState extends State<FavoriteScreen> {
  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.favoriteItems;

    return Scaffold(
      appBar: AppBar(
        title: Text('favorites '),
        elevation: 0,
      ),
      body: products.isEmpty
          ? Center(
              child: Text('You have no favories yet '),
            )
          : GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) => ChangeNotifierProvider.value(
                  value: products[index], child: ProductItem()),
              itemCount: products.length,
            ),
      drawer: MainDrawer(),
    );
  }
}
