import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/screens/CartScreen.dart';
import 'package:flutter_complete_guide/screens/FavoritesScreen.dart';
import 'package:flutter_complete_guide/screens/Products_Overview_Screen.dart';

class MainDrawer extends StatelessWidget {
  Widget buildListTile(String title, IconData icon, Function function) {
    return ListTile(
      leading: Icon(
        icon,
        size: 22,
      ),
      title: Text(
        title,
        style: TextStyle(
          fontFamily: 'RobotoCondensed',
          fontSize: 20,
          fontWeight: FontWeight.bold,
        ),
      ),
      onTap: function,
    );
  }

  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: <Widget>[
          Container(
            height: (MediaQuery.of(context).size.height -
                    MediaQuery.of(context).padding.top) *
                0.15,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Theme.of(context).accentColor,
            child: Row(
              children: [
                IconButton(
                    onPressed: () {},
                    icon: Icon(
                      Icons.account_circle,
                      size: 26,
                    )),
                SizedBox(
                  width: 10,
                ),
                Text(
                  'Your Profile ',
                  style: TextStyle(
                      fontWeight: FontWeight.w900,
                      fontSize: 20,
                      color: Theme.of(context).primaryColor),
                ),
              ],
            ),
          ),
          SizedBox(
            height: 20,
          ),
          buildListTile(
            'Shop',
            Icons.home,
            () => Navigator.of(context)
                .pushReplacementNamed(ProductsOverviewScreen.routeName),
          ),
          buildListTile(
            'Favorites',
            Icons.favorite,
            () => Navigator.of(context)
                .pushReplacementNamed(FavoriteScreen.routeName),
          ),
          buildListTile(
            'Cart',
            Icons.shopping_cart,
            () => Navigator.of(context)
                .pushReplacementNamed(CartScreen.routeName),
          ),
        ],
      ),
    );
  }
}
