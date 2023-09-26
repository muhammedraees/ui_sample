import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:ui_sample/main.dart';

class screen5 extends StatelessWidget {
  const screen5({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text('Order #1688068'),
        centerTitle: true,
      ),
      body: Container(
        padding: EdgeInsets.all(8),
        child: ListView(
          children: [
            ListTile(
              visualDensity: VisualDensity(vertical: -4),
              leading: Text(
                'May 31,05:42 PM',
                style: TextStyle(fontSize: 16),
              ),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          CircleAvatar(
                            radius: 8,
                            backgroundColor: Colors.blue,
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Text('Delivered', style: TextStyle(fontSize: 16)),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
              indent: 18,
              endIndent: 18,
            ),
            ListTile(
              leading: Text('1 ITEM'),
              trailing: TextButton.icon(
                  onPressed: () {},
                  icon: Icon(Icons.receipt_outlined),
                  label: Text('RECEIPT')),
            ),
            ListTile(
              leading: Image(
                image: NetworkImage('https://www.beyoung.in/api/cache/catalog/products/plain_new_update_images/navy_blue_plain_t-shirt_men_base_700x933.jpg'),
              ),
              title: Text('Explore | Men | Navy Blue'),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('1 piece'),
                  Text('Size: XL'),
                  ListTile(
                    visualDensity: VisualDensity(vertical: -4),
                    leading: TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.looks_one),
                        label: Text(
                          'x ₹799',
                          style: TextStyle(fontSize: 16),
                        )),
                    trailing: Text(
                      '₹799',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                    ),
                  ),
                ],
              ),
            ),
            Divider(
              thickness: 1,
              color: Colors.grey,
              indent: 18,
              endIndent: 18,
            ),
            ListTile(
              visualDensity: VisualDensity(vertical: -3),
              leading: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Item Total'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('Delivery'),
                ],
              ),
              trailing: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  Text('₹799'),
                  SizedBox(
                    height: 5,
                  ),
                  Text('FREE',style: TextStyle(fontSize: 15,color: Colors.green),),
                ],
              ),
            ),
            ListTile(
              leading: Text('Grand Total',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
              trailing: Text('₹799',style: TextStyle(fontSize: 16,fontWeight: FontWeight.w500)),
            ),
             Divider(
              thickness: 1,
              color: Colors.grey,
              indent: 18,
              endIndent: 18,
            ),
            ListTile(
              visualDensity: VisualDensity(vertical: -4),
              leading: Text('CUSTOMER DETAILS'),
              trailing: TextButton.icon(onPressed: (){}, icon: Icon(Icons.share_outlined), label: Text('SHARE')),
            ),
            ListTile(
              
              title: Text('Deepa',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16),),
              subtitle: Text('+91-7829000484',style: TextStyle(fontSize: 16)),
              trailing: Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Row(
                        children: [
                          Image(image: AssetImage('assets/images/features/call.png'),width: 35,),
                          SizedBox(
                            width: 20,
                          ),
                          Image(image: AssetImage('assets/images/whatsapp.png'),width: 35),
                        ],
                      )
                    ],
                  ),
                ],
              ),
            ),
            ListTile(
              title: Text('Address',style: TextStyle(fontWeight: FontWeight.w500)),
              subtitle: Text('D 1101 Chartered Beverly\nHills,Subramanyapura P.O',style: TextStyle(fontSize: 16)),
            ),

            ListTile(
              visualDensity: VisualDensity(vertical: -4),
              leading: Row(mainAxisSize: MainAxisSize.min,children: [
                Text('City',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)),
                SizedBox(width: 140,),
                Text('Pincode',style: TextStyle(fontWeight: FontWeight.w500,fontSize: 16)),
              ],),
              
            ),
           Container(
            child: Container(
              padding: EdgeInsets.only(left: 17),
              child: Row(
                children: [
                  Text('Bangalore',style: TextStyle(fontSize: 16)),
                  SizedBox(width: 94,),
                  Text('560061',style: TextStyle(fontSize: 16))
                ],
              ),
            ),
           )
          ],
        ),
      ),
    );
  }
}
