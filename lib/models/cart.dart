import 'package:flutter/material.dart';
import 'package:shoe_app/models/shoe.dart';

class Cart extends ChangeNotifier{
  //list of shoes
  List<Shoe> shoeShop = [
    Shoe(
      name: 'cortez', 
      price: '235', 
      imagePath: 'lib/images/cortez.png', 
      description: 'Light on the feet for anywear',
      ),
    Shoe(
      name: 'Air Max +', 
      price: '260', 
      imagePath: 'lib/images/nair+.png', 
      description: 'Advanced running shoes for the fearless',
      ),
    Shoe(
      name: 'Z Vomero', 
      price: '190', 
      imagePath: 'lib/images/zoom_vomero.png', 
      description: 'Swift track runners',
      ),
    Shoe(
      name:'Air F1', 
      price: '100', 
      description: 'Casual street', 
      imagePath: 'lib/images/af1.png'
      ),
    Shoe(
      name: '95s', 
      price: '200', 
      imagePath: 'lib/images/Am95.png', 
      description: 'Inspired by the best for the basketball enthusiasts',
      ),
      
  ];

  //list of items in user cart
  List<Shoe> userCart = [];

  // get list of items for sale
  List<Shoe> getShoeList() {
    return shoeShop;
  }

  //get cart
  List<Shoe> getUserCart() {
    return userCart;
  }

  //add cart
  void addItemToCart(Shoe shoe) {
    userCart.add(shoe);
    notifyListeners();
  }

  //remove cart items
  void removeItemFromCart(Shoe shoe){
    userCart.remove(shoe);
    notifyListeners();
  }
}