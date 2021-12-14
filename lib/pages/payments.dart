import 'package:buyeasy/pages/orderdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';

class Payments extends StatefulWidget {
  const Payments({Key? key}) : super(key: key);

  @override
  _PaymentsState createState() => _PaymentsState();
}

class _PaymentsState extends State<Payments> {
  var sized = SizedBox(height: 10);
  var sized2 = SizedBox(height: 20);
  var sizedw = SizedBox(width: 10);
  var sizedw2 = SizedBox(width: 20);
  var divider = Divider(
    color: Colors.grey,
    thickness: 0.5,
    height: 0.5,
  );

  Widget paymentMethod(
      {var mainText,
      String subText = '',
      IconData icon = Icons.chevron_right,
      var fWeight = FontWeight.w400,
      isIcon = true}) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          mainText,
          style: TextStyle(color: Colors.black87, fontWeight: fWeight),
        ),
        Row(
          children: [
            Text(
              subText.isEmpty ? '' : subText,
              style: TextStyle(
                color: Colors.black38,
              ),
            ),
            Icon(isIcon ? icon : null, color: Colors.black38),
          ],
        ),
      ],
    );
  }

  Widget AmountCard({String? text, amount, color}) {
    return Container(
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(6),
        color: color,
      ),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
        Text(text!.toUpperCase(),
            style: TextStyle(
              color: Colors.white70,
            )),
        sized,
        Text(
          "₹$amount",
          style: TextStyle(color: Colors.white, fontWeight: FontWeight.w600,fontSize: 18),
        )
      ]),
    );
  }

  Widget oveledTab(
      {text,
      bgcolor = const Color.fromRGBO(228, 228, 228, 1),
      textcolor = const Color.fromRGBO(118, 118, 114, 1)}) {
    return GestureDetector(
      child: Container(
        height: 40,
        width: 120,
        alignment: Alignment.center,
        decoration: BoxDecoration(
            color: bgcolor, borderRadius: BorderRadius.circular(50)),
        child: Text(
          text,
          textAlign: TextAlign.center,
          style: TextStyle(color: textcolor, fontWeight: FontWeight.w500),
        ),
      ),
    );
  }

  Widget OrderTile({
    var imageName,
    orderText,
    detailText,
    amount,
    bool status = true,
  }) {
    Color suc = Colors.green;
    Color fail = Colors.red;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          // isThreeLine: true,
          leading: Container(
            padding: EdgeInsets.zero,
            margin: EdgeInsets.zero,
            height: 60,
            width: 60,
            child: Image.asset("images/products/$imageName"),
          ),
          title: Text(orderText,style: TextStyle(fontSize: 14),),
          subtitle: Text(detailText,style: TextStyle(fontSize: 12.5)),
          trailing: Column(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              sized,
              Text(
                "₹$amount",
                textAlign: TextAlign.right,
                style: TextStyle(
                    color: HexColor("#517e9b"), fontWeight: FontWeight.w800),
              ),
              Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Icon(
                    Icons.circle,
                    color: status ? suc : fail,
                    size: 12,
                  ),
                  sizedw,
                  status ? Text("Successfull") : Text("Failed"),
                ],
              ),
            ],
          ),
        ),
        sized,
        Text(
          "\t\t\t\t₹$amount deposited to 58860200000138",
          textAlign: TextAlign.left,
          style: TextStyle(color: Colors.grey.shade600),
        ),
        sized,
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: Icon(Icons.arrow_back),
        title: Text("Payments"),
        actions: [
          Icon(FontAwesome.attention_circled,),SizedBox(width: 10,)
        ],
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        shrinkWrap: true,
        padding: EdgeInsets.all(20),
        children: [
          Container(
            width: 150,
            height: 187,
            decoration: BoxDecoration(
                border: Border.all(
                  color: Colors.grey,
                  width: 0.5,
                ),
                borderRadius: BorderRadius.circular(5)),
            child: Padding(
              padding: EdgeInsets.all(10),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Transaction Limit",
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.w500),
                  ),
                  sized,
                  const Text(
                    "A free limit up to which you will receive the onlne payments directly in your bank",
                    style: TextStyle(
                        fontSize: 13,
                        fontWeight: FontWeight.w400,
                        wordSpacing: 2),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  LinearProgressIndicator(
                    color: Colors.blueAccent,
                    value: 0.225,
                    backgroundColor: Colors.grey.shade300,
                  ),
                  const SizedBox(
                    height: 5,
                  ),
                  Text(
                    "36,668 left out of ₹50,000",
                    style: TextStyle(color: Colors.grey.shade500),
                  ),
                  FlatButton(
                    onPressed: () {},
                    height: 24,
                    child: const Text(
                      "Increse limit",
                      style: TextStyle(
                        color: Colors.white,
                      ),
                    ),
                    color: Colors.blueAccent,
                  ),
                ],
              ),
            ),
          ),
          sized2,
          paymentMethod(mainText: "Default Method", subText: "Online Payments"),
          sized,
          paymentMethod(mainText: "Payment Profile", subText: "Bank Account"),
          sized,
          divider,
          sized,
          paymentMethod(
              mainText: "Payment Overview",
              subText: "Life Time",
              fWeight: FontWeight.w600,
              icon: Icons.keyboard_arrow_down),
          sized,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Expanded(child: AmountCard(
                  color: Colors.deepOrange,
                  text: "amount on hold",
                  amount: "0"),),sizedw,
              Expanded(child: AmountCard(
                  color: Color.fromRGBO(97, 211, 100, 1),
                  text: "amount Received",
                  amount: "13,332"),)
            ],
          ),
          sized,
          paymentMethod(
              mainText: "Transaction", fWeight: FontWeight.w600, isIcon: false),
          sized2,
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
             Expanded(child:  oveledTab(
               text: "On hold",
             ),),
              oveledTab(
                  text: "Payouts (15)",
                  textcolor: Colors.grey.shade300,
                  bgcolor: Color.fromRGBO(13, 110, 177, 1)),
              oveledTab(
                text: "Refunds",
              )
            ],
          ),
          sized2,
          OrderTile(
            imageName: "p1.webp",
            orderText: "Order #1688068",
            detailText: "Jul 12, 02:06 PM ",
            amount: 799,
          ),
          divider,
          sized2,
          OrderTile(
            imageName: "p2.jpg",
            orderText: "Order #1457741",
            detailText: "Apr 26, 07:47 PM ",
            amount: 397.4,
          ),
          divider,
          sized2,
          OrderTile(
            imageName: "p3.jfif",
            orderText: "Order #1408896",
            detailText: "Apr 11, 10:54 AM ",
            amount: 686.42,
          ),
          divider,
          sized2,
          OrderTile(
            imageName: "p4.jfif",
            orderText: "Order #1369633",
            detailText: "Apr 2, 11:29 AM ",
            amount: 1123.5,
          ),
          divider,
          sized2,
          OrderTile(
            imageName: "p5.jpg",
            orderText: "Order #1370125",
            detailText: "Apr 2, 11:29 AM ",
            amount: 1722.75,
          ),
          sized2,
          OrderTile(
            imageName: "p1.webp",
            orderText: "Order #1688068",
            detailText: "Jul 12, 02:06 PM ",
            amount: 799,
          ),
          divider,
          sized2,
          OrderTile(
            imageName: "p2.jpg",
            orderText: "Order #1457741",
            detailText: "Apr 26, 07:47 PM ",
            amount: 397.4,
          ),
          divider,
          sized2,
          OrderTile(
            imageName: "p3.jfif",
            orderText: "Order #1408896",
            detailText: "Apr 11, 10:54 AM ",
            amount: 686.42,
          ),
          divider,
          sized2,
          OrderTile(
            imageName: "p4.jfif",
            orderText: "Order #1369633",
            detailText: "Apr 2, 11:29 AM ",
            amount: 1123.5,
          ),
          divider,
          sized2,
          OrderTile(
            imageName: "p5.jpg",
            orderText: "Order #1370125",
            detailText: "Apr 2, 11:29 AM ",
            amount: 1722.75,
          ),
          sized2,
          OrderTile(
            imageName: "p1.webp",
            orderText: "Order #1688068",
            detailText: "Jul 12, 02:06 PM ",
            amount: 799,
          ),
          divider,
          sized2,
          OrderTile(
            imageName: "p2.jpg",
            orderText: "Order #1457741",
            detailText: "Apr 26, 07:47 PM ",
            amount: 397.4,
          ),
          divider,
          sized2,
          OrderTile(
            imageName: "p3.jfif",
            orderText: "Order #1408896",
            detailText: "Apr 11, 10:54 AM ",
            amount: 686.42,
          ),
          divider,
          sized2,
          OrderTile(
            imageName: "p4.jfif",
            orderText: "Order #1369633",
            detailText: "Apr 2, 11:29 AM ",
            amount: 1123.5,
          ),
          divider,
          sized2,
          OrderTile(
            imageName: "p5.jpg",
            orderText: "Order #1370125",
            detailText: "Apr 2, 11:29 AM ",
            amount: 1722.75,
          ),
          sized2,
          sized2,
          Container(
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(7),
              color: Colors.blueAccent,
            ),
            padding: EdgeInsets.symmetric(vertical: 7),
            child: Center(
              child: Column(
                children: [
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
        ],
      ),
    );
  }
}
