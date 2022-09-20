// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, prefer_const_literals_to_create_immutables

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/account/accountpage.dart';
import 'package:nm24/agent/agentbookpage.dart';
import 'package:nm24/appform/dossiereformpage.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/login/loginpage.dart';
import 'package:nm24/looking%20for%20counsaltant/imintrestedpage.dart';
import 'package:nm24/search/searchpage.dart';

class Drawercustom extends StatefulWidget {
  Drawercustom({Key? key}) : super(key: key);

  @override
  _DrawercustomState createState() => _DrawercustomState();
}

class _DrawercustomState extends State<Drawercustom> {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        mainAxisSize: MainAxisSize.max,
        children: [
          UserAccountsDrawerHeader(
            decoration: BoxDecoration(color: colorskyblue),
            accountName: Text('Jon Deo'),
            accountEmail: Text('jon123@gmail.com'),
            currentAccountPicture: CircleAvatar(
              child: Text(
                'J',
                style: TextStyle(color: Colors.red, fontSize: 35, fontWeight: FontWeight.bold),
              ),
              backgroundColor: Colors.white,
            ),
            otherAccountsPictures: [
              CircleAvatar(
                child: Text('M'),
                backgroundColor: Colors.white,
              ),
            ],
            onDetailsPressed: () {},
          ),
          ListTile(
            leading: Icon(Icons.account_box_rounded),
            title: Text('Account'),
            onTap: () {
              Get.to(() => AccountPage());
            },
          ),
   

      
          ListTile(
              leading: Icon(Icons.search),
              title: Text('Search'),
              onTap: () {
                Get.to(() => SearchPage());
              }),
          ListTile(
              leading: Icon(Icons.support_agent_rounded),
              title: Text('Agent'),
              onTap: () {
                Get.to(() =>AgentBookPage());
              }),
              ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text('app Form'),
              onTap: () {
                Get.to(() => DossierFormPage());
              }),
              ListTile(
              leading: Icon(Icons.logout_outlined),
              title: Text('Your Intersted'),
              onTap: () {
                Get.to(() => LookingForCounsaltantPage());
              }),
    
          
          Divider(
            height: 1.0,
          ),
          Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                        ListTile(
                leading: Icon(Icons.logout_outlined),
                title: Text('Logout'),
                onTap: () {
                  Get.offAll(() => LoginPage());
                }),
                  ListTile(
                    leading: Icon(Icons.copyright),
                    title: Text('Copyright'),
                  ),
                ],
              ))
        ],
      ),
    );
  }
}
