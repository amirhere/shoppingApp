


import 'package:flutter/material.dart';
import 'package:provider/provider.dart';


import '../providers/Products.dart';
import './product_item.dart';




class ProductsGrid extends StatelessWidget {
  @override
  Widget build(BuildContext context) {


    final productsData = Provider.of<Products>(context);
    final loadedProducts = productsData.items;


    return GridView.builder(
      padding: EdgeInsets.all(10.0),
      itemCount: loadedProducts.length,
      itemBuilder: (ctx,i) => ProductItem(loadedProducts[i].id, loadedProducts[i].title, loadedProducts[i].imageUrl),
      gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2, // amount of columns
        childAspectRatio: 3/2, // taller than the width
        crossAxisSpacing: 10,  // spacing between the columns
        mainAxisSpacing: 10, // space between the rows
      ),
    );
  }
}
