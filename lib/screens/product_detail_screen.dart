
import 'package:flutter/material.dart';
import '../providers/Products.dart';
import 'package:provider/provider.dart';



class ProductDetailScreen extends StatelessWidget {

  //final String title;

  static const routeName = '/product-detail';


  ProductDetailScreen();

  @override
  Widget build(BuildContext context) {


    final productId = ModalRoute.of(context).settings.arguments as String;

    final loadedProduct = Provider.of<Products>(context).findById(productId);

    return Scaffold(
      appBar: AppBar(
        title: Text(loadedProduct.title),
      ),

    );
  }
}
