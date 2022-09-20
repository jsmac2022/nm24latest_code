// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nm24/PropertyListing/propertyAd/propertyadwidgetpage.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';

class PropertyAd extends StatefulWidget {
  PropertyAd({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<PropertyAd> createState() => _PropertyAdState();
}

class _PropertyAdState extends State<PropertyAd> {
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: appbarbackbutton(context, "Property Ad"),
          body: SizedBox(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            child: Padding(
              padding: const EdgeInsets.all(10.0),
              child: SingleChildScrollView(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    
                  sizedboxheight(deviceheight(context, 0.1)),
                    uploadsuccicon(),
                    sizedboxheight(10.0),
                    headingsubtitlewidget1(context),
                    sizedboxheight(30.0),
                    Text('Reach more customers faster',
                        style: textstyleHeading2(context)!
                            .copyWith(color: colorblack)),
                    sizedboxheight(30.0),
                    nextBtn1(context),
                    sizedboxheight(20.0),
                    sevebutt3(context),
                    sizedboxheight(50.0),
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
