import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import './providers/Products.dart';




import './screens/products_overview_screen.dart';
import './screens/product_detail_screen.dart';



void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (ctx) => Products(),
      child: MaterialApp(
        title: 'Shop App',
        theme: ThemeData(
          primarySwatch: Colors.purple,
          accentColor: Colors.deepOrange,
        ),
        home: ProductsOverviewScreen(),

        routes: {

          ProductDetailScreen.routeName: (ctx) => ProductDetailScreen(),

        }),
    );
  }
}


