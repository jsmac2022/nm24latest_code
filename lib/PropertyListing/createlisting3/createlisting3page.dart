// ignore_for_file: prefer_const_constructors_in_immutables

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:nm24/PropertyListing/createlisting3/createlisting3widget.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';

class Createlisting3 extends StatefulWidget {
  Createlisting3({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<Createlisting3> createState() => _Createlisting3State();
}

class _Createlisting3State extends State<Createlisting3> {
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
                    uplodeimage(),
                    sizedboxheight(15.0),
                    chooseimagebox(context),
                    sizedboxheight(15.0),
                    addimagebox(context),
                    sizedboxheight(15.0),
                    textcontent(),
                    sizedboxheight(55.0),
                    nextBtn(context),
                    sizedboxheight(15.0),
                    sevebutt1(context)
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
