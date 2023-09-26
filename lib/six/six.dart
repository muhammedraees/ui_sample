import 'package:flutter/material.dart';
import 'package:ui_sample/main.dart';

class Screen6 extends StatefulWidget {
  Screen6({super.key});

  @override
  State<Screen6> createState() => _Screen6State();
}

class _Screen6State extends State<Screen6> {
  bool _switchValue = false;

  var p_name = [
    'Couch Potato | Women...',
    'Couch Potato | Men | BI...',
    'Mug | Explore',
    'Combo Blahst 1 | Pack...'
  ];

  var price = [
    '₹799',
    '₹799',
    '₹399',
    '₹699',
  ];

  var images = [
    'https://cdn.shopify.com/s/files/1/1296/0049/products/Navy-Blue-Fold.png?v=1560001528&width=1445',
    'https://cdn.shopify.com/s/files/1/0328/4051/5715/products/Black_UnisexPlainTshirtbyshopghumakkad5_245eed3f-e9fa-4585-bcaf-f89901030359.jpg?v=1634295145',
    'https://www.redwolf.in/image/catalog/mugs/harry-potter-infographic-coffee-mug-india.jpg',
    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEdjr4hihAat33Xcqn8rAIH2Kowap2ACH0KQhRO0168ruZexz9KlDCrTvG4MxPqVc_CTo&usqp=CAU',
  ];

  var myTabs=[
    Tab(child: Text('Products',style: TextStyle(fontSize: 16)),),
    Tab(child: Text('Categories',style: TextStyle(fontSize: 16),),),     
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
        length: myTabs.length,
        child: Scaffold(
          backgroundColor: Color.fromARGB(255, 229, 239, 243),
          appBar: AppBar(
            toolbarHeight: 50,
            title: Text('Catalogue'),
            centerTitle: true,
            actions: [IconButton(onPressed: (){}, icon: Icon(Icons.search))],
            bottom: TabBar(tabs: myTabs),
          ),
          body: ListView.builder(
            padding: EdgeInsets.all(15),
            itemCount: price.length,
            itemBuilder: (context, index) {
              return Container(
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(5),
                ),
                margin: EdgeInsets.only(bottom: 15),
                child: Column(
                  children: [
                    Container(
                      padding: EdgeInsets.only(left: 10, top: 10),
                      child: Row(
                        children: [
                          Align(
                            alignment: Alignment.topLeft,
                            child: ClipRRect(
                              borderRadius: BorderRadius.circular(5),
                              child: Image(
                                image: NetworkImage(images[index]),
                                height: 80,
                              ),
                            ),
                          ),
                          SizedBox(width: 10),
                          Container(
                            height: 85,
                            width: 220,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text(p_name[index],
                                        style: TextStyle(fontSize: 15)),
                                    Icon(Icons.more_vert),
                                  ],
                                ),
                                Text('1 piece', style: TextStyle(fontSize: 13)),
                                SizedBox(height: 5),
                                Text(price[index],
                                    style: TextStyle(
                                        fontWeight: FontWeight.w500,
                                        fontSize: 15)),
                                Row(
                                  mainAxisAlignment:
                                      MainAxisAlignment.spaceBetween,
                                  children: [
                                    Text('In stock',
                                        style: TextStyle(color: Colors.blue)),
                                    _buildSwitch(),
                                  ],
                            
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Divider(
                        thickness: 1,
                        color: Color.fromARGB(255, 218, 218, 218)),
                    TextButton.icon(
                        onPressed: () {},
                        icon: Icon(Icons.share_outlined),
                        label: Text('Share Product')),
                  ],
                ),
              );
            },
          ),
        ));
  }

  Widget _buildSwitch() {
    return SizedBox(
        width: 50,
        height: 20,
        child: FittedBox(
            fit: BoxFit.cover,
            child: Switch(value: _switchValue, onChanged: _updateValue)));
  }

  void _updateValue(bool value) {
    setState(() {
      _switchValue = value;
    });
  }
}


// import 'package:flutter/material.dart';

// class Screen6 extends StatefulWidget {
//   Screen6({Key? key}) : super(key: key);

//   @override
//   State<Screen6> createState() => _Screen6State();
// }

// class _Screen6State extends State<Screen6> {
//   bool _switchValue = false;

//   var p_name = [
//     'Couch Potato | Women...',
//     'Couch Potato | Men | BI...',
//     'Mug | Explore',
//     'Combo Blahst 1 | Pack...'
//   ];

//   var price = [
//     '₹799',
//     '₹799',
//     '₹399',
//     '₹699',
//   ];

//   var images = [
//     'https://cdn.shopify.com/s/files/1/1296/0049/products/Navy-Blue-Fold.png?v=1560001528&width=1445',
//     'https://cdn.shopify.com/s/files/1/0328/4051/5715/products/Black_UnisexPlainTshirtbyshopghumakkad5_245eed3f-e9fa-4585-bcaf-f89901030359.jpg?v=1634295145',
//     'https://www.redwolf.in/image/catalog/mugs/harry-potter-infographic-coffee-mug-india.jpg',
//     'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQEdjr4hihAat33Xcqn8rAIH2Kowap2ACH0KQhRO0168ruZexz9KlDCrTvG4MxPqVc_CTo&usqp=CAU',
//   ];

//   var myTabs = [
//     Tab(
//       child: Text('Products', style: TextStyle(fontSize: 16)),
//     ),
//     Tab(
//       child: Text(
//         'Categories',
//         style: TextStyle(fontSize: 16),
//       ),
//     ),
//   ];

//   @override
//   Widget build(BuildContext context) {
//     return DefaultTabController(
//       length: myTabs.length,
//       child: Scaffold(
//         backgroundColor: Color.fromARGB(255, 229, 239, 243),
//         appBar: AppBar(
//           toolbarHeight: 50,
//           title: Text('Catalogue'),
//           centerTitle: true,
//           actions: [
//             IconButton(onPressed: () {}, icon: Icon(Icons.search)),
//           ],
//           bottom: TabBar(tabs: myTabs),
//         ),
//         body: SingleChildScrollView(
//           child: ListView.builder(
//             shrinkWrap: true,
//             physics: NeverScrollableScrollPhysics(),
//             padding: EdgeInsets.all(15),
//             itemCount: price.length,
//             itemBuilder: (context, index) {
//               return Container(
//                 // Rest of your code...
//               );
//             },
//           ),
//         ),
//       ),
//     );
//   }

//   Widget _buildSwitch() {
//     return SizedBox(
//       width: 50,
//       height: 20,
//       child: FittedBox(
//         fit: BoxFit.cover,
//         child: Switch(value: _switchValue, onChanged: _updateValue),
//       ),
//     );
//   }

//   void _updateValue(bool value) {
//     setState(() {
//       _switchValue = value;
//     });
//   }
// }
