import 'package:flutter/material.dart';

import '../widgets/Drawer_Main.dart';

class FavoriteScreen extends StatelessWidget {
  static const routeName = '/favoritescreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('favorites ')),
      drawer: MainDrawer(),
    );
  }
}
