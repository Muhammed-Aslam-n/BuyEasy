import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/typicons_icons.dart';

import 'package:flutter_svg/flutter_svg.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class ManageStore extends StatefulWidget {
  const ManageStore({Key? key}) : super(key: key);

  @override
  _ManageStoreState createState() => _ManageStoreState();
}

class _ManageStoreState extends State<ManageStore> {
  Widget cardView({var iconbg, var icon, bool isNew = false,var Maintext,var labelText,isImage=false,img}) {
    return Card(
      clipBehavior: Clip.antiAliasWithSaveLayer,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(10),
      ),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Card(
                  color: iconbg,
                  shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(5)),
                  child: Padding(
                    padding: const EdgeInsets.all(3.0),
                    child:isImage ?Image.asset(img,height:30,width:30):Icon(icon,color: Colors.white,),
                  ),
                ),
                isNew
                    ? SizedBox(
                        width: 50,
                        height: 28,
                        child: Card(
                          color: Colors.green,
                          shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(5)),
                          child: Padding(
                            padding: const EdgeInsets.only(top: 1,bottom: 3),
                            child: Text(
                              labelText,
                              textAlign: TextAlign.center,style: TextStyle(color: Colors.white),
                            ),
                          ),
                        ),
                      )
                    : Text(''),
              ],
            ),
            SizedBox(
              height: 8,
            ),
            SizedBox(
              width: 85,
              child: Text(
                Maintext,
                style: TextStyle(fontWeight: FontWeight.w600,fontSize: 15,letterSpacing: 1.2),
              ),
            )
          ],
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 0.9;

    return Scaffold(
      backgroundColor: Color.fromRGBO(250, 250, 250, 2),
      appBar: AppBar(
        title: Text(
          "Manage Store",
          style: TextStyle(fontWeight: FontWeight.w400),
        ),
        elevation: 0,
        centerTitle: true,
      ),

      bottomNavigationBar: BottomNavigationBar(
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Image.asset("images/managestore/homeonlycolor.png",height: 30,),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("images/managestore/orderonlycolor.png",height: 30,),
            label: 'Orders',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("images/managestore/productsnocolor.png",height: 30,),
            label: 'Products',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("images/managestore/managecoloronly.png",height: 30,),
            label: 'Manage',
          ),
          BottomNavigationBarItem(
            icon: Image.asset("images/managestore/accountnocolor.png",height: 30,),
            label: 'Account',
          ),
        ],
        selectedItemColor: Color.fromRGBO(11, 111, 179, 1),
        currentIndex: 3,showSelectedLabels: true,unselectedItemColor: Colors.grey,showUnselectedLabels: true,
      ),


      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: GridView.count(
          crossAxisCount: 2,
          crossAxisSpacing: 20,
          childAspectRatio: (itemWidth / itemHeight),
          mainAxisSpacing: 30,
          shrinkWrap: true,
          children: [
            cardView(isImage: true,img: "images/managestore/loudspeakeronlycolor.png",iconbg: Colors.deepOrange,Maintext: "Marketing Designs"),
            cardView(isImage: true,img: "images/managestore/rupayonlycolor.png",iconbg: Color.fromRGBO(97, 211, 100,1),Maintext: "Online Payments"),
            cardView(isImage: true,img: "images/managestore/discountonlycolor.png",iconbg: Color.fromRGBO(244, 176, 83,1),Maintext: "Discount Coupons"),
            cardView(isImage: true,img: "images/managestore/customeronlycolor.png",iconbg: Colors.teal,Maintext: "My Customers"),
            cardView(isImage: true,img: "images/managestore/qronlycolor.png",iconbg: Color.fromRGBO(124, 124, 124,1),Maintext: "Store QR Code"),
            cardView(isImage: true,img: "images/managestore/extraIcononlycolor.png",iconbg: Colors.purple,Maintext: "Extra Charges"),
            cardView(icon: Icons.format_align_left_outlined,iconbg: Color.fromRGBO(190, 90, 135,1),Maintext: "Order Form",isNew: true,labelText: "New"),

          ],
        ),
      ),
    );
  }
}
