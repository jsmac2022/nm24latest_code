// ignore_for_file: prefer_const_constructors, avoid_print

import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarwidgetpage.dart';
import 'package:nm24/common/styles/const.dart';

AppBar appbarbackbutton(context, title) {
  return AppBar(
    leading: backbuttonAppbarwidget(title, context),
    title: Text(
      title,
      style: textstyletitleHeading6(context)!.copyWith(fontSize: 18, fontWeight: fontWeight900),
    ),
    actions: [if (title != 'Notification' && title != '') notificationactionWidget(context) else Container()],
  );
}
