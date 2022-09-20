// ignore_for_file: prefer_const_constructors_in_immutables, sized_box_for_whitespace

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';

import 'createlisting2widget.dart';



class Createlisting2 extends StatefulWidget {
  Createlisting2({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<Createlisting2> createState() => _Createlisting2State();
}

class _Createlisting2State extends State<Createlisting2> {
  



  @override
  Widget build(BuildContext context) {
    return  Stack(
      children: [
        Scaffold(
           appBar: appbarbackbutton(context, "Create Listing"),
          body: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Offer Type',style: labelHintFontStyle),
                    dropdowne(),
                    sizedboxheight(15.0),
                    Text('Object Type',style: labelHintFontStyle),
                    dropdowne(),
                    sizedboxheight(15.0),
                    Text('Address, no.',style: labelHintFontStyle),
                    sizedboxheight(10.0),
                    address(),
                    sizedboxheight(15.0),
                    Text('Zipcode, city.',style: labelHintFontStyle),
                    sizedboxheight(10.0),
                    zipcode(),
                    sizedboxheight(15.0),
                    Text('Country',style: labelHintFontStyle),
                    dropdowne(),
                    sizedboxheight(15.0),
                    rediobutton(),
                    sizedboxheight(15.0),
                    nextBtn3(context),
                    sizedboxheight(15.0),
                    sevebutt(context)
                  ],
                ),
              ),
            ),
          ),
        ),
         bgplaceholder()
      ],
    );
  }
}
