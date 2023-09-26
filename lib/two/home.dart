import 'package:flutter/material.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:flutter/src/widgets/placeholder.dart';

class ui_two extends StatelessWidget {
  const ui_two({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Center(child: Text('Manage Store')),
      ),
      body: Container(child: Padding(
        padding: const EdgeInsets.all(20.0),
        child: GridView(children: [
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
          child: Column(children: [
            Image.network(''),
            Text('Marketing \n Designs',style: TextStyle(fontSize: 25),)
          ],),),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
          child: Column(children: [
            Image.network(''),
            Text('Online \n Payments',style: TextStyle(fontSize: 25),)
          ],),),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
          child: Column(children: [
            Image.network(''),
            Text('Discount \n Coupons',style: TextStyle(fontSize: 25),)
          ],),),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
          child: Column(children: [
            Image.network(''),
            Text('My \n Customers',style: TextStyle(fontSize: 25),)
          ],),),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
          child: Column(children: [
            Image.network(''),
            Text('Store QR \n Code',style: TextStyle(fontSize: 25),)
          ],),),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
          child: Column(children: [
            Image.network(''),
            Text('Extra \n Charges',style: TextStyle(fontSize: 25),)
          ],),),
          Container(decoration: BoxDecoration(borderRadius: BorderRadius.circular(20),color: Colors.red),
          child: Column(children: [
            Image.network(''),
            Text('Order \n Form',style: TextStyle(fontSize: 25),)
          ],),),
        ],
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2,mainAxisSpacing: 20.0,crossAxisSpacing: 20.0),
        ),
      ),)
    );
  }
}