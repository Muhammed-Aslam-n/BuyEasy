import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:fluttericon/font_awesome_icons.dart';
import 'package:fluttericon/linearicons_free_icons.dart';

class AdditionalInformations extends StatefulWidget {
  const AdditionalInformations({Key? key}) : super(key: key);

  @override
  _AdditionalInformationsState createState() => _AdditionalInformationsState();
}

class _AdditionalInformationsState extends State<AdditionalInformations> {
  Widget listTile(
      {var leading,
      var text,
      var icon,
      var action,
      bool isIcon = true,
      bool isSwitch = false,isImage=false,img}) {
    return ListTile(
      leading: isImage?Image.asset(img,color: null,height: 35,width: 28,):leading,
      title: Text(
        text,
        style: TextStyle(fontSize: 17, fontWeight: FontWeight.w300),
      ),
      trailing: isIcon
          ? (isSwitch
              ? switchUi()
              : IconButton(
                  icon: icon,
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => action));
                  },
                ))
          : SizedBox(),
    );
  }

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

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CustomScrollView(
      slivers: [
        SliverList(
          delegate: SliverChildListDelegate(
            [
              AppBar(
                leading: IconButton(
                  icon: Icon(Icons.arrow_back),
                  onPressed: () {},
                ),
                title: Text("Additional Information"),
                centerTitle: true,
                elevation: 0,
              ),
              ListView(
                shrinkWrap: true,
                children: [
                  listTile(
                      leading: Icon(Icons.share_outlined),
                      text: "Share Dukaan App",
                      icon: Icon(Icons.chevron_right)),
                  listTile(isImage: true,
                      img: "images/additionalfile/chatARem.png",
                      text: "Change Language",
                      icon: Icon(Icons.chevron_right)),
                  listTile(
                      leading: Icon(FontAwesome.whatsapp),
                      text: "WhatsApp Chat Support",
                      icon: Icon(Icons.chevron_right)),
                  listTile(
                      leading: Icon(LineariconsFree.lock_1),
                      text: "Privacy Policy",
                      isIcon: true,
                      isSwitch: true),
                  listTile(
                      leading: Icon(Icons.star_border_outlined),
                      text: "Rate Us",
                      isIcon: false),
                  listTile(
                      leading: Icon(Icons.logout),
                      text: "Sign Out",
                      isIcon: false),
                ],
              ),
            ],
          ),
        ),
        SliverFillRemaining(
          hasScrollBody: false,
          child: Align(
            alignment: Alignment.bottomCenter,
            child: Container(
              width: double.infinity,
              margin: EdgeInsets.only(bottom: 12),
              height: 50,
              child: Center(
                child: Column(
                  children: [
                    Text(
                      'Version',
                      style: TextStyle(
                        color: Colors.black45,
                        letterSpacing: 2,
                      ),
                    ),
                    SizedBox(
                      height: 7,
                    ),
                    Text(
                      '2.4.2',
                      style: TextStyle(
                        color: Colors.black54,
                        letterSpacing: 1,
                      ),
                    ),

                  ],
                ),
              ),
            ),
          ),
        ),
      ],
    ));
  }
}
