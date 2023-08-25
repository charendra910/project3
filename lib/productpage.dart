import 'package:flutter/material.dart';
//import 'package:my_app/switch.dart';


class ProductPage extends StatelessWidget {
  const ProductPage(String string, {super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("ProductName"),),

      body: Column(
        children: [
          Container(
            height: 200,
            width: double.infinity,
           
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(25),color: Colors.grey),
           child: GestureDetector(
            onTap:(){
              
            },
           ) ,
          ),
        
        ],
        
        
      ),
      
      
      
        
      
    );
  }
}