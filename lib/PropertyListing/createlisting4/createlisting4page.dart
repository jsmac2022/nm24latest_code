// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';

import 'createlisting4widget.dart';

class Createlisting4 extends StatefulWidget {
  Createlisting4({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<Createlisting4> createState() => _Createlisting4State();
}

class _Createlisting4State extends State<Createlisting4> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: appbarbackbutton(context, "Create Listing"),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Text('Title (optional)', style: labelHintFontStyle),
                    sizedboxheight(10.0),
                    title(),
                    Text('Description (optional)', style: labelHintFontStyle),
                    sizedboxheight(10.0),
                    discription(),
                    sizedboxheight(10.0),
                    Text('general features', style: labelHintFontStyle),
                    sizedboxheight(10.0),
                    generalfratures(context),
                    sizedboxheight(10.0),
                    Text('Amenities', style: labelHintFontStyle),
                    sizedboxheight(10.0),
                    amenities(context),
                    sizedboxheight(10.0),
                    Text('Other', style: labelHintFontStyle),
                    sizedboxheight(10.0),
                    other(context),
                    sizedboxheight(10.0),
                    nextBtn2(context),
                    sizedboxheight(15.0),
                    sevebutt2(context)
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
