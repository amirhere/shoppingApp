import 'package:flutter/material.dart';
import './product.dart';

class Products with ChangeNotifier {

  List<Product> _items = [

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

  List<Product> get items{

    return [..._items];
  }



  Product findById(String id){
    return _items.firstWhere((prod) => prod.id == id);
  }

  void addProduct(){
  //  _items.add(value);
    notifyListeners();
  }


}