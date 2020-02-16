import 'package:flutter/material.dart';

import '../models/product.dart';
import '../widgets/product_item.dart';



class ProductsOverviewScreen extends StatelessWidget {

  final List<Product> loadedProducts = [

    Product(
      id: 'p1',
      title: 'Red Shirt',
      description: 'this is a red shirt',
      price: 23.34,
      imageUrl: 'https://faashwear.com/wp-content/uploads/2018/02/27749956_2025366264390883_458651464780166959_n.jpg'
    ),

    Product(
        id: 'p2',
        title: 'Blue Shirt',
        description: 'this is a red shirt',
        price: 23.34,
        imageUrl: 'https://faashwear.com/wp-content/uploads/2018/02/27749956_2025366264390883_458651464780166959_n.jpg'
    ),

    Product(
        id: 'p3',
        title: 'Green Shirt',
        description: 'this is a red shirt',
        price: 23.34,
        imageUrl: 'https://faashwear.com/wp-content/uploads/2018/02/27749956_2025366264390883_458651464780166959_n.jpg'
    )

  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('MyShop',),
      ),
      body: GridView.builder(
        padding: EdgeInsets.all(10.0),
        itemCount: loadedProducts.length,
        itemBuilder: (ctx,i) => ProductItem(loadedProducts[i].id, loadedProducts[i].title, loadedProducts[i].imageUrl),
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2, // amount of columns
            childAspectRatio: 3/2, // taller than the width
            crossAxisSpacing: 10,  // spacing between the columns
            mainAxisSpacing: 10, // space between the rows
        ),
      ),
    );
  }
}
