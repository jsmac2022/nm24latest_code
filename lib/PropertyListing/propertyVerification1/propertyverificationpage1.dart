// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nm24/PropertyListing/propertyVerification1/propertyverificationwidget1.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';

class PropertyVerification1 extends StatefulWidget {
  PropertyVerification1({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<PropertyVerification1> createState() => _PropertyVerification1State();
}

class _PropertyVerification1State extends State<PropertyVerification1> {
  bool add = false;

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: appbarbackbutton(context, "Property Verification"),
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
                    contanrbox(),
                    sizedboxheight(10.0),
                    Text('Phone number', style: labelHintFontStyle),
                    sizedboxheight(10.0),
                    mobile(),
                    sizedboxheight(10.0),
                    selectoptiondropdowne(add),
                    add != true
                        ? Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              sizedboxheight(10.0),
                              Text('Please Enter Security Code',
                                  style: labelHintFontStyle),
                              sizedboxheight(10.0),
                              securitycode(),
                            ],
                          )
                        : Container(),
                    sizedboxheight(10.0),
                    nextBtn1(context),
                    sizedboxheight(15.0),
                    sevebutt3(context)
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
