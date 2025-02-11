// ignore_for_file: must_be_immutable

import 'package:flutter/material.dart';
import '../models/shoe.dart';

class ShoeTile extends StatelessWidget{
  Shoe shoe;
  void Function()? onTap;
  ShoeTile({
    super.key,
    required this.shoe,
    required this.onTap
    });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(left: 25),
      width: 200,
      decoration: BoxDecoration(
        color: Colors.grey[100],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
        //shoepic
        ClipRRect(
          borderRadius: BorderRadius.circular(12),
          child: Image.asset(shoe.imagePath)
          ),

        //descr
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            shoe.description, 
            style: TextStyle(color: Colors.blueGrey),
            ),
        ),

        //price + dets
        Padding(
          padding: const EdgeInsets.only(left: 25.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  //shoe name 
                  Text(
                    shoe.name, 
                    style: const TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 20,
                      ),),
          
                  const SizedBox(height: 5,),
          
                  //price
                  Text(
                    '\$${shoe.price}',
                    style: TextStyle(
                      color: Colors.blueGrey),
                  ),
                ],
              ),
          
              //add cart button
              GestureDetector(
                onTap: onTap ,
                child: Container(
                  padding: EdgeInsets.all(20),
                  decoration: BoxDecoration(
                    color: Colors.black,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(10), 
                      bottomRight: Radius.circular(10)
                      ),
                    ),
                  child: const Icon(
                    Icons.add,
                    color: Colors.white,
                    ),
                  ),
              ),
            ],
          
          ),
        ),

        //price and add cart
        ],
      ),
    );
  }
}