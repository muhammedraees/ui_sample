import 'package:flutter/material.dart';
import 'package:ui_sample/main.dart';

class screen2 extends StatefulWidget {
  const screen2({super.key});

  @override
  State<screen2> createState() => _screen2State();
}

class _screen2State extends State<screen2> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Center(child: Text('Manage Store'))),
        body: Container(
          color: Color.fromARGB(255, 229, 239, 243),
          padding: const EdgeInsets.all(20),
          child: GridView.count(
            crossAxisCount: 2,
            mainAxisSpacing: 15,
            crossAxisSpacing: 15,
            childAspectRatio: 4/3,
            children: [
              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Image(image: AssetImage('assets/images/marketing.png'),width: 35,),
                    SizedBox(height: 10,),
                    Text('Marketing \nDesigns',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),


              Container(
                 padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Image(image: AssetImage('assets/images/money.png'),width: 35,),
                    SizedBox(height: 10,),
                    Text('Online \nPayments',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),


              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Image(image: AssetImage('assets/images/discount.png'),width: 35,),
                    SizedBox(height: 10,),
                    Text('Discount \nCoupons',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),


              Container(
                padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Image(image: AssetImage('assets/images/costumer.png'),width: 35,),
                    SizedBox(height: 10,),
                    Text('My \nCostumers',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),


              Container(
               padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Image(image: AssetImage('assets/images/qr.png'),width: 35,),
                    SizedBox(height: 10,),
                    Text('Store QR \nCode',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),


              Container(
               padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Image(image: AssetImage('assets/images/extra.png'),width: 35,),
                    SizedBox(height: 10,),
                    Text('Extra \nCharges',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),


              Container(
               padding: const EdgeInsets.all(10),
                decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: const[
                    Image(image: AssetImage('assets/images/form.png'),width: 35,),
                    SizedBox(height: 10,),
                    Text('Order \nForm',style: TextStyle(fontSize: 17,fontWeight: FontWeight.w500),)
                  ],
                ),
              ),
              
            ],
          ),
        ));
  }
}
