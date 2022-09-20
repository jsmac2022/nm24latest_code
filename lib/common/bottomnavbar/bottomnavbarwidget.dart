// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/common/styles/const.dart';

BottomNavigationBar bottomNavBarPagewidget(context, model) {
  return BottomNavigationBar(
    type: BottomNavigationBarType.fixed,
    backgroundColor: colorWhite,
    selectedItemColor: colorredlight,
    unselectedItemColor: colorblack,
    showUnselectedLabels: true,
    selectedFontSize: 15,
    unselectedFontSize: 13,
    iconSize: 28,
    
    
    selectedIconTheme: IconThemeData(color: colorredlight,size: 30),
    // showSelectedLabels: false,
    selectedLabelStyle:TextStyle(fontWeight: fontWeight700) ,
    unselectedLabelStyle: TextStyle(fontWeight: fontWeight500),
    onTap: (index) {
      
      model.toggle(context, index);
    },
    currentIndex: model.bottombarzindex,
    // ignore: prefer_const_literals_to_create_immutables
    items: [
      BottomNavigationBarItem(
        icon: Image(image: AssetImage('assets/icons/home.png'),  color:model.bottombarzindex==0?colorredlight: Colors.black87,),
        // icon: Icon(Icons.home_rounded),
        label: 'Home',
      ),
      BottomNavigationBarItem(
          // icon: Icon(Icons.person_outlined),
          icon: Image(image: AssetImage('assets/icons/listing.png'),   color:model.bottombarzindex==1?colorredlight: Colors.black87,),
          label: 'Listing'),
      BottomNavigationBarItem(
          // icon: Icon(Icons.chat_bubble_outline_rounded),
        icon: Image(image: AssetImage('assets/icons/chat.png'),   color:model.bottombarzindex==2?colorredlight: Colors.black87,), 
        label: 'Chat'),
      BottomNavigationBarItem(
        
          icon: Image(
            image: AssetImage(
              'assets/icons/service.png',
            ),
            width: 20,
            color:model.bottombarzindex==3?colorredlight: Colors.black87,
          ),
          label: 'Service'),
      BottomNavigationBarItem(
          // icon: Icon(Icons.person_outline_rounded),
          icon: Image(
            image: AssetImage('assets/icons/profile.png'),   color:model.bottombarzindex==4?colorredlight: Colors.black87,
          ),
          label: 'Profile'),
    ],
  );
}
