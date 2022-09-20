// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/complete%20profile/upload%20document/uploadwidgetpage.dart';

class UploaddoumentPage extends StatelessWidget {
  const UploaddoumentPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [

        Scaffold(
                  // extendBodyBehindAppBar: true,
          appBar: appbarbackbutton(context, 'Upload your documents'),
          body: Container(padding: EdgeInsets.symmetric(horizontal: 15),
            width: deviceWidth(context, 1.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                    sizedboxheight(20.0),
                //  sizedboxheight(deviceheight(context, 0.13)),
              headingsubtitlewidget(context),
               sizedboxheight(30.0),
              uploadgellerybox(context),
               sizedboxheight(20.0),
              uploadcamerabox(context),
                        sizedboxheight(50.0),
               uploadBtn(context)
              ],
            ),
          ),
        ),
 bgplaceholder()
      ],
    );
  }
}