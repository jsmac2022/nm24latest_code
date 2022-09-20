
// ignore_for_file: avoid_print, prefer_const_constructors_in_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/complete%20profile/completeprofilewidgetpage.dart';


class Nodatafound extends StatefulWidget {
  Nodatafound({Key? key}) : super(key: key);

  @override
  State<Nodatafound> createState() => _NodatafoundState();
}

class _NodatafoundState extends State<Nodatafound> {
 


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarbackbutton(context, ''),
      body:Center(child: headingtext(context, 'No Data Found'),)
      
    
    );
  }
}
