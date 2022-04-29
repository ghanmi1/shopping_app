import 'package:flutter/material.dart';

import '../widgets/Detail.dart';

class ProductDetailScreen extends StatelessWidget {
  static const routeName = '/ProductDetailScreen';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(elevation: 0),
      body: DetailPage(),
    );
  }
}
