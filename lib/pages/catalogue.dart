import 'package:buyeasy/pages/orderdetails.dart';
import 'package:flutter/material.dart';

class Catalogue extends StatefulWidget {
  const Catalogue({Key? key}) : super(key: key);

  @override
  _CatalogueState createState() => _CatalogueState();
}

class _CatalogueState extends State<Catalogue> {
  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2,
      child: Scaffold(
        backgroundColor: HexColor("#e8e8e8"),
        appBar: AppBar(
          title: Text("Catalogue"),
          centerTitle: true,
          elevation: 0,
          bottom: const TabBar(
            tabs: [
              Text("Products"),
              Text("Categories"),
            ],
          ),
        ),
        body: TabBarView(
          children: [pCard(), pCard()],
        ),
      ),
    );
  }
}

class pCard extends StatefulWidget {
  const pCard({Key? key}) : super(key: key);

  @override
  _pCardState createState() => _pCardState();
}

class _pCardState extends State<pCard> {
  var inStock = "In stock";
  var outStock = "Out of Stock";
  Widget switchUi() {
    bool isSwitched = true;

    void toggleSwitch(bool value) {
      if (isSwitched == false) {
        setState(() {
          isSwitched = true;
        });
        print('Switch Button is ON');
      } else {
        setState(() {
          isSwitched = false;
        });
        print('Switch Button is OFF');
      }
    }

    return Switch(
      value: isSwitched,
      onChanged: toggleSwitch,
      activeColor: Colors.blueAccent,
    );
  }
  Widget productCard({image,pName,count,amount,status}) {
    return Container(
      margin: EdgeInsets.all(20),
      padding: EdgeInsets.symmetric(vertical: 8, horizontal: 4),
      height: 190,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(5),
        border: Border.all(
          width: 0.111,
          color: HexColor("#ffffff")
        ),
        color: Colors.white,
        boxShadow: [
          BoxShadow(
            blurRadius: 5.0,
            color:HexColor("#f0f0f0"),
          )
        ]
      ),
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      width: 90,
                      height: 110,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(6),
                          border: Border.all(
                              color: Colors.grey.shade500, width: 0.45)),
                      child: Image.asset(
                        image,
                        fit: BoxFit.fill,
                      ),
                    ),
                  ],
                ),
                Expanded(
                  child: Container(
                    margin: EdgeInsets.all(10),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(pName,style: TextStyle(fontSize: 15,fontWeight: FontWeight.w600),),
                            Icon(Icons.more_vert_outlined,color: Colors.grey.shade500,),
                          ],
                        ),
                        Text("$count piece"),
                        SizedBox(
                          height: 8,
                        ),
                        Text("₹$amount",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 16)),
                        SizedBox(
                          height: 8,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Text(status?inStock:outStock,style:TextStyle(color: status?HexColor("#65b963"):Colors.red),),
                    SizedBox(
                      height: 30,width: 40,child: switchUi(),
                    )
                          ],
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          const Divider(
            height: 2,
            thickness: 1.8,
          ),
          const SizedBox(
            height: 10,
          ),
          Expanded(child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Icon(Icons.share_outlined),
              SizedBox(
                width: 7,
              ),
              Text('Share Product'),
            ],
          ))
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: HexColor("#f4f4f4"),
      body: ListView(
        children: [
          productCard(image: "images/products/p1.webp",pName: "Couch Potato | Women...",count: "1",amount: "799",status: true),

          productCard(image: "images/products/p2.jpg",pName: "Couch Potato | Men | Bl...",count: "1",amount: "799",status: true),

          productCard(image: "images/products/p3.jfif",pName: "Mug | Explore",count: "1",amount: "399",status: true),

          productCard(image: "images/products/p4.jfif",pName: "Combo Blahst 1 | Pack",count: "1",amount: "699",status: true),

          productCard(image: "images/products/pr5.jpg",pName: "Mug | Orchard",count: "1",amount: "499",status: true),

          productCard(image: "images/products/pr6.jpeg",pName: "Combo Blahst 2 | Explo",count: "1",amount: "599",status: true),

          productCard(image: "images/products/pr7.jfif",pName: "I See  Combo Pack",count: "1",amount: "1,299",status: true),

          productCard(image: "images/products/rp8.jfif",pName: "Kids Combo Blahst",count: "1",amount: "1,199",status: true),



          SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.all(20.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(7),
                color: Colors.blueAccent,
              ),
              padding: const EdgeInsets.symmetric(vertical: 7),
              child: Center(
                child: Column(
                  children: const [
                    Text(
                      'Version',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      '2.4.2',
                      style: TextStyle(
                        color: Colors.white,
                        letterSpacing: 1,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),

        ],
      ),
    );
  }
}
