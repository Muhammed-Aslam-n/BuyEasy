import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';

class OrderDetails extends StatefulWidget {
  const OrderDetails({Key? key}) : super(key: key);

  @override
  _OrderDetailsState createState() => _OrderDetailsState();
}

class _OrderDetailsState extends State<OrderDetails> {
  @override
  Widget build(BuildContext context) {
    var divider = Divider(
      height: 0.5,
      thickness: 1,
    );
    var sizedh1 = SizedBox(
      height: 10,
    );
    var sizedh2 = SizedBox(
      height: 20,
    );
    var sizedw1 = SizedBox(
      width: 10,
    );
    var sizedw2 = SizedBox(
      width: 20,
    );
    Widget textDesc(
        {text,
        color = Colors.black87,
        fweight = FontWeight.w400,
        double size = 15.0,
        lspace = 1.0,
        wspace = 1.0}) {
      return Text(
        text,
        style: TextStyle(
          color: color,
          fontWeight: fweight,
          fontSize: size,
          letterSpacing: lspace,
          wordSpacing: wspace,
        ),
      );
    }
    Widget sectionText({text,
      color = Colors.grey,
      lspace = 1.0,
      wspace = 1.0}){
      return Text(
        text,
        style: TextStyle(
          color: color,
          fontWeight: FontWeight.w500,
          fontSize: 14,
          letterSpacing: lspace,
          wordSpacing: wspace,
        ),
      );
    }
    Widget countNum({count, borColor}) {
      return Container(
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 2),
        decoration: BoxDecoration(
            color: HexColor("#add3e1"),
            border: Border.all(
              color: HexColor("#246a9b"),
            )),
        child: Text("$count"),
      );
    }

    Widget statusIcons() {
      return Container(
        width: 50,
        height: 25,
        padding: EdgeInsets.symmetric(horizontal: 5, vertical: 3),
        decoration: BoxDecoration(
            color: HexColor("#dbf3db"),
            borderRadius: BorderRadius.circular(5),
            border: Border.all(color: HexColor("#29a12c"))),
        child: Text(
          "PAID",
          style: TextStyle(
              color: HexColor("#339e37"), fontWeight: FontWeight.w800),
          textAlign: TextAlign.center,
        ),
      );
    }

    return Scaffold(
      appBar: AppBar(
        leading: const Icon(Icons.arrow_back),
        backgroundColor: Colors.blueAccent,
        elevation: 0,
        title: const Text(
          "Order #1688068",
          style: TextStyle(
            color: Colors.white,
          ),
        ),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.all(20),
        child: ListView(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textDesc(text: "May 31, 05:42 PM"),
                Row(
                  children: [
                    Icon(
                      Icons.circle,
                      color: HexColor("#3251cf"),
                      size: 18,
                    ),
                    sizedw1,
                    textDesc(text: "Delivered", color: Colors.grey.shade600)
                  ],
                ),
              ],
            ),
            sizedh2,
            divider,
            sizedh2,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textDesc(text: "1 ITEM", color: Colors.grey),
                Row(
                  children: [
                    Icon(
                      Icons.receipt_outlined,
                      color: HexColor("#246a9b"),
                      size: 18,
                    ),
                    sizedw1,
                    textDesc(
                        text: "RECEIPT",
                        color: HexColor("#246a9b"),
                        fweight: FontWeight.w600)
                  ],
                ),
              ],
            ),
            sizedh2,
            ListTile(
              leading: Image.asset("images/products/p1.webp"),
              isThreeLine: true,
              title: textDesc(
                  text: "Explore | Men | Navy Blue",
                  color: Colors.black,
                  fweight: FontWeight.w500),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  sizedh1,
                  textDesc(text: "1 piece", color: Colors.black, size: 12),
                  SizedBox(
                    height: 5,
                  ),
                  textDesc(text: "Size: XL", color: Colors.black, size: 12),
                  sizedh1,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        children: [
                          countNum(count: 1),
                          sizedw1,
                          textDesc(
                              text: "x ${rupee}799",
                              color: Colors.black,
                              size: 16.2),
                        ],
                      ),
                      textDesc(
                          text: "${rupee}799", color: Colors.black, size: 16.5),
                    ],
                  ),
                ],
              ),
            ),
            sizedh2,
            divider,
            sizedh2,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textDesc(
                  text: "Item Total",
                ),
                textDesc(text: "${rupee}799", fweight: FontWeight.w600),
              ],
            ),
            sizedh1,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textDesc(
                  text: "Delivery",
                ),
                textDesc(
                    text: "FREE",
                    color: Colors.green,
                    fweight: FontWeight.w600,
                    size: 16.0),
              ],
            ),
            sizedh1,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textDesc(
                    text: "Grand Total", fweight: FontWeight.w600, size: 16.0),
                textDesc(
                    text: "${rupee}799", fweight: FontWeight.w600, size: 17.0),
              ],
            ),
            sizedh2,
            divider,
            sizedh2,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                sectionText(
                    text: "CUSTOMER DETAILS"),
                Row(
                  children: [
                    Icon(
                      Icons.share_outlined,
                      color: HexColor("#246a9b"),
                      size: 20,
                    ),
                    sizedw1,
                    textDesc(
                        text: "SHARE",
                        color: HexColor("#246a9b"),
                        fweight: FontWeight.w600,
                        size: 14.0),
                  ],
                ),
              ],
            ),
            sizedh2,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        textDesc(text: "Deepa", fweight: FontWeight.w600),
                        sizedh1,
                        textDesc(
                            text: "+ 91-7829000484",
                            color: Colors.grey.shade800)
                      ],
                    )
                  ],
                ),
                Row(
                  children: [
                    Icon(
                      FontAwesome.phone,
                      color: HexColor("#246a9b"),
                      size: 32,
                    ),
                    sizedw2,
                    Icon(
                      FontAwesome.whatsapp,
                      color: Colors.green,
                      size: 32,
                    ),
                  ],
                )
              ],
            ),
            sizedh2,
            SizedBox(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  textDesc(text: "Address", fweight: FontWeight.w600),
                  sizedh1,
                  textDesc(
                      text:
                          "D 1101 Chartered Beverly Hills ,Subramanyapura P.O",
                      color: Colors.black87,
                      fweight: FontWeight.w400)
                ],
              ),
            ),
            sizedh1,
            Container(
              width: 100,
              margin: EdgeInsets.only(right: 120),
              // color: Colors.teal,
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textDesc(text: "City", fweight: FontWeight.w600),
                      textDesc(text: "Pincode", fweight: FontWeight.w600),
                    ],
                  ),
                  sizedh1,
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      textDesc(
                        text: "Bangalore",
                        fweight: FontWeight.w400,
                      ),
                      textDesc(text: "560061", fweight: FontWeight.w400),
                    ],
                  ),
                ],
              ),
            ),
            sizedh2,
            textDesc(text: "Payment", fweight: FontWeight.w600),
            sizedh1,
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                textDesc(
                  text: "Online",
                  fweight: FontWeight.w400,
                ),
                statusIcons(),
              ],
            ),
            sizedh2,
            divider,
            sizedh2,
            textDesc(
                text: "ADDITIONAL INFORMATION ",
                fweight: FontWeight.w500,
                size: 14.0,
                color: Colors.grey),
            sizedh2,
            textDesc(text: "State", fweight: FontWeight.w600),
            sizedh1,
            textDesc(
              text: "Karnataka",
              fweight: FontWeight.w400,
            ),
            sizedh2,
            textDesc(text: "Email", fweight: FontWeight.w600),
            sizedh1,
            textDesc(
              text: "greeniceaqua@gmail.com",
              fweight: FontWeight.w400,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: OutlinedButton(
                onPressed: () {},
                child: Text("Share receipt",style: TextStyle(color: HexColor("#226ba9"),fontWeight:FontWeight.w500,fontSize: 16),),
                style: OutlinedButton.styleFrom(
                  side: BorderSide(
                    width: 1.2,
                    color: HexColor("#226ba9"),
                  )
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  var rupee = "₹";
}

class HexColor extends Color {
  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll("#", "");
    if (hexColor.length == 6) {
      hexColor = "FF" + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }

  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));
}
