import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './providers/cart.dart';
import './screens/CartScreen.dart';
import './screens/FavoritesScreen.dart';
import './providers/products.dart';
import './screens/Products_Overview_Screen.dart';
import './utilisation/App_Colors.dart';
import './screens/Product_Detail_Screen.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(create: (context) => Products()),
        ChangeNotifierProvider(create: (context) => Cart()),
      ],
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
          CartScreen.routeName: (context) => CartScreen(),
        },
      ),
    );
  }
}
