import 'package:buyeasy/pages/orderdetails.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/elusive_icons.dart';
import 'package:fluttericon/linecons_icons.dart';

class DukaanPremium extends StatefulWidget {
  const DukaanPremium({Key? key}) : super(key: key);

  @override
  _DukaanPremiumState createState() => _DukaanPremiumState();
}

class _DukaanPremiumState extends State<DukaanPremium> {
  var sizedh1 = const SizedBox(
    height: 10,
  );
  var sizedh2 = const SizedBox(
    height: 20,
  );
  var sizedw1 = const SizedBox(
    height: 10,
  );
  var sizedw2 = const SizedBox(
    height: 20,
  );
  var divider = Divider(
    height: 0.5,
    thickness: 0.7,
  );

  Widget AmountCard({String text = '', icon}) {
    return Container(
      padding: EdgeInsets.all(20),
      margin: EdgeInsets.all(10),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(6),
          border: Border.all(color: Colors.grey, width: 0.12)),
      child: Column(
        children: [
          Icon(icon, size: 26, color: Colors.grey.shade600),
          sizedw1,
          Text(
            text,
            style: TextStyle(color: Colors.grey.shade600),
          )
        ],
      ),
    );
  }

  Widget headerCardText(
      {text, fweight, size, color = Colors.black, isCenter = false}) {
    return Text(
      text,
      textAlign: isCenter ? TextAlign.center : TextAlign.left,
      style: TextStyle(fontSize: size, fontWeight: fweight, color: color),
    );
  }

  Widget featureTile({icon, mainText, subtext}) {
    return SizedBox(
      width: 320,
      child: ListTile(
        leading: Container(
          padding: EdgeInsets.all(11),
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(50),
              border: Border.all(width: 2, color: HexColor("#306d90"))),
          child: Icon(
            icon,
            size: 26,
            color: HexColor("#306d90"),
          ),
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 7, top: 10),
          child: Text(
            mainText,
            style: const TextStyle(fontWeight: FontWeight.w600),
          ),
        ),
        subtitle: Text(
          subtext,
          style: const TextStyle(
            fontWeight: FontWeight.w400,
          ),
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.blueAccent,
        leading: const Icon(Icons.arrow_back),
        title: const Text("Dukaan Premium"),
        centerTitle: true,
        elevation: 0,
      ),
      body: ListView(
        children: [
          SizedBox(
            width: MediaQuery.of(context).size.width,
            height: 200,
            child: Stack(
              children: [
                Container(
                  width: MediaQuery.of(context).size.width,
                  height: 100,
                  color: Colors.blueAccent,
                ),
                Positioned.fill(
                  bottom: 0,
                  child: Align(
                    alignment: Alignment.center,
                    child: Container(
                      width: MediaQuery.of(context).size.width - 30,
                      height: 200,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all(width: 0.2),
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                         Container(
                           margin: EdgeInsets.all(10),
                           height: 60,
                           width: 150,
                           child:  Image.asset("images/products/dukaanLogo - Copy.png",width: 120,fit: BoxFit.fill,),
                         ),
                          headerCardText(
                              text: "Get Dukaan Premium for just",
                              fweight: FontWeight.bold,
                              size: 18.0),
                          sizedh1,
                          headerCardText(
                              text: "₹4,999/year",
                              fweight: FontWeight.bold,
                              size: 18.0),
                          sizedh1,
                          Expanded(
                            child: headerCardText(
                                text:
                                    "All the advanced features for scaling your\nbusiness.",
                                fweight: FontWeight.w400,
                                size: 13.0,
                                isCenter: true),
                          ),
                        ],
                      ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headerCardText(
                    text: "Features", size: 15.2, fweight: FontWeight.w600),
                sizedh2,
                featureTile(
                    icon: Linecons.globe,
                    mainText: "Custom domain name",
                    subtext:
                        "Get your custom domain and build your brand on the internet"),
                sizedh1,
                featureTile(
                    icon: Icons.verified_outlined,
                    mainText: "Verified seller badge",
                    subtext:
                        "Get green verified badge under your store name build trust"),
                sizedh1,
                featureTile(
                    icon: Elusive.laptop,
                    mainText: "Dukaan for PC",
                    subtext:
                        "Access all the exclusive premium features on Dukaan for PC"),
                sizedh1,
                featureTile(
                    icon: Icons.headset_mic_outlined,
                    mainText: "Priority support",
                    subtext:
                        "Get your questions resolved with our priority customer support"),
                sizedh2,
                const Divider(
                  height: 0.5,
                  thickness: 4,
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                headerCardText(text: "What is Dukaan Premium"),
                sizedh1,
                Container(
                    width: double.infinity,
                    height: 200,
                    decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(30),
                        color: Colors.deepOrange),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Image.asset(
                        "images/managestore/ytubeKutti.png",
                        fit: BoxFit.fill,
                      ),
                    )),
                sizedh2,
                headerCardText(
                    text: "Frequently asked questions",
                    fweight: FontWeight.w600,
                    size: 16.0),
                sizedh1,
                headerCardText(
                    text: "What types of businesses can use Dukaan Premium?",
                    fweight: FontWeight.w500),
                sizedh1,
                headerCardText(
                    text: "Dukaan caters to a wide variety of sellers. Be it a small grocery store or a big legacy brand - anyone " +
                        "who wants to sell their products/services online - Dukaan is the perfect platform for you.",
                    color: Colors.grey.shade600),
                sizedh1,
                divider,
                sizedh1,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    headerCardText(
                        text: "What is your refund policy?",
                        fweight: FontWeight.w500),
                    Icon(Icons.add)
                  ],
                ),
                sizedh1,
                divider,
                sizedh1,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: headerCardText(
                          text:
                              "Will there be an automatic charge after the paid trial?",
                          fweight: FontWeight.w500),
                    ),
                    Icon(Icons.add)
                  ],
                ),
                sizedh1,
                divider,
                sizedh1,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    headerCardText(
                        text: "What payment methods do you offer?",
                        fweight: FontWeight.w500),
                    Icon(Icons.add)
                  ],
                ),
                sizedh1,
                divider,
                sizedh1,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    headerCardText(
                        text: "What happens when my free trial ends?",
                        fweight: FontWeight.w500),
                    Icon(Icons.add)
                  ],
                ),
                sizedh1,
                divider,
                sizedh1,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    headerCardText(
                        text: "What are the terms for the custom demain?",
                        fweight: FontWeight.w500),
                    Icon(Icons.add)
                  ],
                ),
                sizedh1,
                divider,
                sizedh1,
                Divider(
                  thickness: 4,
                ),
                sizedh1,
                headerCardText(
                    text: "Need help? Get in touch",
                    fweight: FontWeight.w600,
                    size: 16.0),
                sizedh1,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Expanded(
                      child: AmountCard(
                          text: "Live Chat", icon: Icons.chat_bubble_outline),
                    ),
                    Expanded(
                      child: AmountCard(
                          text: "Phone Call", icon: Icons.phone_outlined),
                    )
                  ],
                ),
                sizedh1,
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Expanded(
                      child: Text(
                        "Select Domain",textAlign: TextAlign.center,
                        style: TextStyle(
                            color: HexColor("#3b6d92"),
                            fontWeight: FontWeight.w600),
                      ),
                    ),
                    Expanded(child: ElevatedButton(
                      onPressed: () {},
                      child: Text("Get Premium"),
                      style: ElevatedButton.styleFrom(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8)
                        )
                      ),
                    ),),
                  ],
                ),
                sizedh2,
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(7),
                  ),
                  padding: const EdgeInsets.symmetric(vertical: 7),
                  child: Center(
                    child: Column(
                      children:  [
                        Text(
                          'Version',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            letterSpacing: 2,
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Text(
                          '2.4.2',
                          style: TextStyle(
                            color: Colors.grey.shade600,
                            letterSpacing: 1,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
