import 'package:flutter/material.dart';
import 'package:ui_sample/main.dart';
import 'package:percent_indicator/linear_percent_indicator.dart';

class screen3 extends StatefulWidget {
  const screen3({super.key});

  @override
  State<screen3> createState() => _screen3State();
}

class _screen3State extends State<screen3> {
  var images = [
    'https://imagescdn.planetfashion.in/img/app/product/7/746160-8404270.jpg?auto=format',
    'https://www.redwolf.in/image/catalog/mugs/harry-potter-infographic-coffee-mug-india.jpg',
    'https://cdn.shopify.com/s/files/1/1296/0049/products/Navy-Blue-Fold.png?v=1560001528&width=1445',
    'https://cdn.shopify.com/s/files/1/0328/4051/5715/products/Black_UnisexPlainTshirtbyshopghumakkad5_245eed3f-e9fa-4585-bcaf-f89901030359.jpg?v=1634295145',
  ];

  var texts = [
    'Order #1688068',
    'Order #1452541',
    'Order #1652453',
    'Order #1021548',
  ];

  var subs = [
    'JUL 12, 02.06 PM',
    'APL 22, 12.14 PM',
    'JAN 02, 10.10 AM',
    'FEB 15, 04.25 PM',
  ];

  var price = [
    '₹799',
    '₹397.4',
    '₹686.42',
    '₹1123.5',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          centerTitle: true,
          title: const Text('Payments'),
          leading: IconButton(
            onPressed: () {},
            icon: const Icon(Icons.arrow_back),
          ),
          actions: [
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.info_outline),
            ),
          ]),
      body: ListView(
        children: [
          Card(
            margin: EdgeInsets.all(20),
            child: Column(
              children: [
                ListTile(
                  title: Text(
                    'Transaction Limit',
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  subtitle: Text(
                      'A free limit up to which you will receive \nthe online payments directly in your bank'),
                ),
                SizedBox(
                  height: 10,
                ),
                new LinearPercentIndicator(
                  lineHeight: 10,
                  percent: 0.3,
                  backgroundColor: Color.fromARGB(255, 223, 235, 240),
                  progressColor: Colors.blue,
                  barRadius: Radius.circular(5),
                ),
                ListTile(
                  leading: Text('36,668 left out of ₹50,000'),
                ),
                Align(
                    alignment: Alignment.topLeft,
                    child: Container(
                        margin: EdgeInsets.only(left: 16),
                        child: ElevatedButton(
                            onPressed: () {}, child: Text('Increase limit')))),
              ],
            ),
          ),
          ListTile(
            visualDensity: VisualDensity(vertical: -4),
            title: Text('Default Method'),
            trailing: Directionality(
                textDirection: TextDirection.rtl,
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.chevron_left),
                    label: Text('Online Payments',selectionColor: Colors.grey,))),
          ),
          ListTile(
            visualDensity: VisualDensity(vertical: -4),
            title: Text('Payment Profile'),
            trailing: Directionality(
                textDirection: TextDirection.rtl,
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.chevron_left),
                    label: Text('Bank Account'))),
          ),
          Divider(
            color: Color.fromARGB(255, 223, 223, 223),
            thickness: 1,
            indent: 20,
            endIndent: 20,
          ),
          ListTile(
            visualDensity: VisualDensity(vertical: -4),
            title: Text('Payments Overview'),
            trailing: Directionality(
                textDirection: TextDirection.rtl,
                child: TextButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.expand_more),
                    label: Text('Life Time'))),
          ),
          Container(
            height: 110,
            padding: EdgeInsets.only(left: 15, right: 15),
            child: GridView.count(
              crossAxisCount: 2,
              mainAxisSpacing: 15,
              crossAxisSpacing: 15,
              childAspectRatio: 4 / 2.5,
              children: [
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 245, 128, 60),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: const [
                      ListTile(
                        title: Text(
                          'AMOUNT ON HOLD',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text(
                            '₹0',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  padding: const EdgeInsets.only(top: 10),
                  decoration: BoxDecoration(
                    color: Color.fromARGB(255, 20, 156, 32),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Column(
                    children: const [
                      ListTile(
                        title: Text(
                          'AMOUNT RECEIVED',
                          style: TextStyle(fontSize: 14, color: Colors.white),
                        ),
                        subtitle: Padding(
                          padding: EdgeInsets.only(top: 8),
                          child: Text(
                            '₹13,332',
                            style: TextStyle(
                              fontSize: 25,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          ListTile(
            title: Text('Transactions'),
            subtitle: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ElevatedButton(
                    onPressed: () {},
                    child: Text(
                      'On hold',
                      style: TextStyle(color: Colors.grey),
                    ),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Color.fromARGB(255, 218, 225, 230),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child: Text('Payouts(15)'),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    )),
                ElevatedButton(
                    onPressed: () {},
                    child:
                        Text('Refunds', style: TextStyle(color: Colors.grey)),
                    style: ElevatedButton.styleFrom(
                      elevation: 0,
                      backgroundColor: Color.fromARGB(255, 218, 225, 230),
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(30.0)),
                    )),
              ],
            ),
          ),
         Container(
  height: 350,
  child: ListView.separated(
    itemBuilder: (context, index) {
      return ListTile(
        leading: Image(image: NetworkImage(images[index])),
        title: Text(texts[index]),
        subtitle: Text(subs[index]),
        trailing: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
           
            SizedBox(width: 0),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                Text(
                  price[index],
                  style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: Colors.blue),
                ),
                Row(
                  children: [ CircleAvatar(
              radius: 5,
              backgroundColor: Colors.green,
              
            ),SizedBox(width: 8,),
                    Text('Successful'),
                  ],
                )
              ],
            ),
          ],
        ),
      );
    },
    itemCount: images.length,
    separatorBuilder: (context, index) {
      return const Divider(
        indent: 20,
        endIndent: 20,
        thickness: 1,
        color: Color.fromRGBO(184, 184, 184, 1),
      );
    },
  ),
),
        ],
      ),
    );
  }
}
