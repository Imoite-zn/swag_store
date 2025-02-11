import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:shoe_app/components/search_delegate.dart';
import 'package:shoe_app/components/shoe_tile.dart';
import 'package:shoe_app/models/cart.dart';
import 'package:shoe_app/models/shoe.dart';

class ShopPage extends StatefulWidget{
  const ShopPage ({super.key});

  @override
  State<ShopPage> createState() => _ShopPageState();
}

class _ShopPageState extends State<ShopPage> {

  //add shoe to cart
  void addShoeToCart(Shoe shoe) {
    Provider.of<Cart>(context, listen: false).addItemToCart(shoe);

    //notify the user of the addition
    showDialog(
      context: context, 
      builder: (context) => AlertDialog(
        title: Text('Added to cart'),
        content: Text("check your cart", style: TextStyle(color: Colors.green),),
        
      )
      );
  }


  @override
  Widget build(BuildContext context) {
    //consumer used for data 'consumption'
    return Consumer<Cart>
    (builder: (context, value, child) =>
    Column(
     children: [
      //search bar
      GestureDetector(
        onTap: () {
          showSearch(context: context, delegate: CustomSearchDelegate());
        },
        child: Container(
          padding: const EdgeInsets.all(12),
          margin: const EdgeInsets.symmetric(horizontal: 25),
          decoration: BoxDecoration(
            color: Colors.grey[400],
            borderRadius: BorderRadius.circular(10)
          ),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                'Search',
                style: TextStyle(color:Colors.grey),
              ),
              IconButton(
                onPressed: () {
                  showSearch(
                    context: context, 
                    delegate: CustomSearchDelegate());
                },
                icon: Icon(Icons.search),
                color: Colors.grey,
              ),
            ],
          ),
        ),
      ),

      //message
      Padding(
        padding: const EdgeInsets.symmetric(vertical: 25.0),
        child: Text(
          "Win So Much You Forget How To Lose",
          style: TextStyle(
            color: Colors.blueGrey[700]
          ),
          ),
      ),

      //hotpicks
      Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              'Hot Kicks 🔥',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 24,              
              ),
            ),
            Text(
              'See All',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.blue,
                ),
              ),
          ],
        ),
      ),

      const SizedBox(height: 10,),

    //list of shoes for sale
      Expanded(
        child: ConstrainedBox(
          constraints: BoxConstraints(
            minHeight: 20.0,
            maxHeight: 50.0,
          ),
          child: ListView.builder(
            shrinkWrap: true,
            itemCount: 5,
            scrollDirection: Axis.horizontal,
            itemBuilder: (context, index) {
              //get a shoe
              Shoe shoe = value.getShoeList()[index];
          
                //return the shoe
              return ShoeTile(
                shoe: shoe,
                onTap: () =>  addShoeToCart(shoe),
              );
             },
           ),
        ),
      ),

      const Padding(
        padding: EdgeInsets.only(top: 25.0, left: 25.0, right: 25.0),
        child: Divider(
          color: Colors.white,
        ),
      ),
      ],
    ),
    );
  }
}