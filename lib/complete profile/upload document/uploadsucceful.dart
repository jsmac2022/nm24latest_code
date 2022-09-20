// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/route_manager.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/complete%20profile/completeprofilemodelpage.dart';
import 'package:nm24/profile/profilepage.dart';
import 'package:provider/provider.dart';

class UploadsuccesfulPage extends StatefulWidget {
  const UploadsuccesfulPage({Key? key}) : super(key: key);

  @override
  State<UploadsuccesfulPage> createState() => _UploadsuccesfulPageState();
}

class _UploadsuccesfulPageState extends State<UploadsuccesfulPage> {
  @override
  void initState() {
    super.initState();
    getValuesSF();
  }

  getValuesSF() async {
    // Timer(
    //   Duration(seconds: 3),
    //   ()async {
    // await Provider.of<CompleteProfileModelPage>(context, listen: false).resetstaps();

    //     Get.offAll(() => ProfilePage());
    //   },
    // );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          extendBodyBehindAppBar: true,
          appBar: appbarbackbutton(context, ''),
          body: Container(
            padding: EdgeInsets.symmetric(horizontal: 15),
            width: deviceWidth(context, 1.0),
            height: deviceheight(context, 1.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                sizedboxheight(deviceheight(context, 0.22)),
                uploadsuccicon(),
                sizedboxheight(20.0),
                headingsubtitlewidget1(context),
              ],
            ),
          ),
        ),
        bgplaceholder()
      ],
    );
  }

  Widget uploadsuccicon() {
    return Container(
      width: 150,
      height: 150,
      decoration: BoxDecoration(
          color: colorsanderchat, borderRadius: borderRadiuscircular(100.0)),
      child: Image(
        image: AssetImage('assets/icons/right.png'),
      ),
    );
  }

  Widget headingsubtitlewidget1(context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text("Congratulations",
            textAlign: TextAlign.center,
            style: textstyleHeading1(context)!.copyWith(color: colorblack)),
        sizedboxheight(20.0),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Text(
              'Your Document has been Uploaded successfully admin will verify soon',
              textAlign: TextAlign.center,
              style: textstylesubtitle1(context)),
        )
      ],
    );
  }
}
