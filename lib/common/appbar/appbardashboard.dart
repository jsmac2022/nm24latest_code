// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarwidgetpage.dart';
import 'package:nm24/common/styles/const.dart';

AppBar appbarcustom(context) {
  return AppBar(
       leading: Builder(
        builder: (context) => IconButton(
            icon:Image(image: AssetImage('assets/icons/appbar.png')),
            onPressed: () => Scaffold.of(context).openDrawer(),
          ),),
 
    title: Row(
     
      children: [
        Text(
          'Hi,',
          style: textstyletitleHeading6(context)!.copyWith(fontWeight: fontWeight900,fontSize: 18),
        ),
        sizedboxwidth(5.0),
        Text(
          'Jone Deo',
         style: textstyletitleHeading6(context)!.copyWith(fontWeight: fontWeight900,fontSize: 18),
        ),
      ],
    ),
    actions: [notificationactionWidget(context), sizedboxwidth(10.0)],
  );
}
