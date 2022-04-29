import 'package:flutter/material.dart';
import 'dart:developer';

import '../widgets/Grid_products.dart';
import '../widgets/Drawer_Main.dart';

class ProductsOverviewScreen extends StatelessWidget {
  static const routeName = '/ProductOverviewScreen ';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        actions: [
          Icon(Icons.search),
          Padding(padding: EdgeInsets.only(right: 15))
        ],
        elevation: 0,
      ),
      body: GridProducts(),
      drawer: MainDrawer(),
    );
  }
}
