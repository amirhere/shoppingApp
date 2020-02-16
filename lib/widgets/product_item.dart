import 'package:flutter/material.dart';
import '../screens/product_detail_screen.dart';


class ProductItem extends StatelessWidget {


  final String id;
  final String title;
  final String ImageUrl;

  ProductItem(this.id,this.title,this.ImageUrl);


  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(10),
      child: GridTile(

        child: GestureDetector(
          onTap: (){
            Navigator.of(context).push(MaterialPageRoute(
                builder: (ctx) => ProductDetailScreen(this.title)),);
          },
          child: Image.network(
              ImageUrl,
              fit: BoxFit.cover

          ),



        ),

        footer: GridTileBar(
          backgroundColor: Colors.black54,
          leading: IconButton(
              icon: Icon(Icons.favorite),
              color: Theme.of(context).accentColor,
              onPressed: null
          ),
          title: Text(title, textAlign: TextAlign.center,),
          trailing: IconButton(
              icon: Icon(Icons.shopping_cart),
              color: Theme.of(context).accentColor,
              onPressed: (){

              }),
        ),

      ),
    );
  }
}
