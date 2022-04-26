import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/FavoritesScreen.dart';
import 'package:provider/provider.dart';

import './providers/products.dart';
import './screens/Products_Overview_Screen.dart';
import './utilisation/App_Colors.dart';
import './screens/Product_Detail_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Products(),
      child: MaterialApp(
        title: 'MyShop',
        theme: ThemeData(
          primarySwatch: AppColor.primarycolor,
          accentColor: AppColor.accentcolor,
        ),
        home: ProductsOverviewScreen(),
        routes: {
          ProductDetailScreen.routeName: (context) => ProductDetailScreen(),
          FavoriteScreen.routeName: (context) => FavoriteScreen(),
          ProductsOverviewScreen.routeName: (context) =>
              ProductsOverviewScreen(),
        },
      ),
    );
  }
}
