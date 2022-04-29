import 'package:flutter/material.dart';

import 'package:provider/provider.dart';

import '../widgets/Drawer_Main.dart';
import '../providers/cart.dart';
import '../widgets/CartItemS.dart';

class CartScreen extends StatelessWidget {
  static const routeName = '/CartScreen';

  @override
  Widget build(BuildContext context) {
    final cart = Provider.of<Cart>(context);
    return Scaffold(
      appBar: AppBar(
        title: Text('Your cart '),
        elevation: 0,
      ),
      body: cart.itemCount == 0
          ? Center(
              child: Text('You have no products added to cart for now '),
            )
          : ListView.builder(
              itemBuilder: (context, index) => CartItemS(
                  cart.items.values.toList()[index].id,
                  cart.items.keys.toList()[index],
                  cart.items.values.toList()[index].price,
                  cart.items.values.toList()[index].quantity,
                  cart.items.values.toList()[index].title),
              itemCount: cart.itemCount,
            ),
      drawer: MainDrawer(),
    );
  }
}
