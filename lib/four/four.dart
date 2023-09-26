import 'package:flutter/material.dart';

class screen4 extends StatelessWidget {
   screen4({super.key});
  var features=[
  'assets/images/features/domain.jpg',
  'assets/images/features/bluetick.jpg',
  'assets/images/features/pc.jpg',
  'assets/images/features/care.jpg'
  ];

  var titles=['Custom domain name','Verified seller badge','Dukaan for PC','Priority support'];
   var subs=['Get your own custom domain and build\nyour brand on the internet.','Get green verified badge under your\nstore name and build trust','Access all the exclusive premium features on Dukaan for PC','Get your questions resolved with our priority customer support'];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        children:[ Stack(children: [
          Container(
            height: 160,
            child: AppBar(
              title: Text('Dukaan Premium'),
              centerTitle: true,
              leading: Icon(Icons.arrow_back),
        
            ),
          ),
          Card(
            
            margin: EdgeInsets.only(top: 65, left: 25, right: 25),
            child: SizedBox(
                height: 200.0,
                width: 500,
                child: Column(
                  children: [
                    Container(
                        padding: EdgeInsets.only(top: 15),
                        child: Image(
                          image: AssetImage(
                            'assets/images/dukaan.png',
                          ),
                          width: 140,
                          alignment: Alignment.topCenter,
                        )),
                    SizedBox(
                      height: 20,
                    ),
                    Text(
                      'Get Dukaan Premium for just\n₹4,999/year',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'All the advanced features for scaling your\nbusiness',
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 12),
                    )
                  ],
                )),
          ),
          
        ]),

        Container(padding: EdgeInsets.only(top: 20,left: 10,right: 10),child: Column(crossAxisAlignment: CrossAxisAlignment.start,children: [
          Padding(
            padding: const EdgeInsets.only(left: 20),
            child: Text('Features',style: TextStyle(fontSize: 18,fontWeight: FontWeight.bold),),
          ),
         Column(
                  children: List.generate(
                    features.length,
                    (index) => ListTile(
                      leading: CircleAvatar(
                        radius: 22,
                        backgroundImage: AssetImage(features[index]),
                      ),
                      title:Text(titles[index],style: TextStyle(fontSize: 15,fontWeight: FontWeight.w500),) ,
                      subtitle:Text(subs[index]),
                    ),
                  ),
                ),
        ]),),
        Divider(
          thickness: 4,
          color: Color.fromARGB(255, 226, 226, 226),
          height: 50,
        ),
        Text('What is Dukaan Premuim?',style: TextStyle(fontWeight: FontWeight.bold, fontSize: 18),),
        ]
      ),
    );
  }
}
