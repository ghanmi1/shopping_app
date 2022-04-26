import 'package:flutter/material.dart';
import 'package:flutter_complete_guide/widgets/Button_Categories.dart';
import 'package:provider/provider.dart';

import '../providers/products.dart';
import 'Product_Item.dart';

class GridProducts extends StatelessWidget {
  final buttonsState = List.generate(3, (index) => false, growable: false);

  @override
  Widget build(BuildContext context) {
    final productsData = Provider.of<Products>(context);
    final products = productsData.items;
    return SingleChildScrollView(
      child: Column(
        children: [
          Container(
            height: MediaQuery.of(context).size.height * 0.06,
            child: ListView(scrollDirection: Axis.horizontal, children: [
              ButtonCategories(
                text: 'Phones',
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              ButtonCategories(
                text: 'Tablets',
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.02,
              ),
              ButtonCategories(
                text: 'Accesoires et autres ',
              ),
            ]),
          ),
          SizedBox(
            height: MediaQuery.of(context).size.height * 0.02,
          ),
          Container(
            width: double.infinity,
            height: MediaQuery.of(context).size.height * 0.8,
            child: GridView.builder(
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  childAspectRatio: 1,
                  crossAxisSpacing: 10,
                  mainAxisSpacing: 10),
              itemBuilder: (context, index) => ChangeNotifierProvider.value(
                value: products[index],
                child: ProductItem(),
              ),
              itemCount: products.length,
            ),
          ),
        ],
      ),
    );
  }
}
