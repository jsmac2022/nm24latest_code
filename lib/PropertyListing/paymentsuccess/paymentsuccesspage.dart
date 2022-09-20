// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables

import 'dart:async';

import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/src/extension_navigation.dart';
import 'package:nm24/PropertyListing/paymentsuccess/paymentsuccesswidget.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/bottomnavbar/bottomnavbar.dart';
import 'package:nm24/common/bottomnavbar/bottomnavbar_modelpage.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:provider/provider.dart';

class Paymentsuccess extends StatefulWidget {
  Paymentsuccess({Key? key, this.title}) : super(key: key);

  final String? title;

  @override
  State<Paymentsuccess> createState() => _PaymentsuccessState();
}

class _PaymentsuccessState extends State<Paymentsuccess> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 3),
      () {
        Provider.of<BottomnavbarModelPage>(context, listen: false)
            .togglebottomindexreset();
        // status ? Get.offAll(() => BottomNavBarPage()) : Get.offAll(() => IntroductionPage());
        Get.to(() => BottomNavBarPage());
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: appbarbackbutton(context, "Payment Success"),
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
