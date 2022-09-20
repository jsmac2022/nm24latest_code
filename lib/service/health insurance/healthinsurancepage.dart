// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:provider/provider.dart';

import 'healthinsurancemodelpage.dart';
import 'healthwidgetpage.dart';

class HealthInsurancePage extends StatelessWidget {
  const HealthInsurancePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: appbarbackbutton(context, 'Health Insurance'),
          body: Consumer<HealthModelPage>(builder: (context, model, _) {
                    return Container(
              width: deviceWidth(context, 1.0),
              height: deviceheight(context, 1.0),
              padding: EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Enter Details For Family Members\n To Be insured',
                    style: textstyletitleHeading6(context),
                  ),
                  checkboxself(context, model),
                  sizedboxheight(20.0),
          model.checkboxvalue?       Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                    selectdob(context, model),
                    genderdropdown(context, model)
                  ],):Container(),
                  sizedboxheight(20.0),
                  addanothermemberbtn(context, model),
                  sizedboxheight(40.0),
                  zipcodeditwidget(context, model),
                   sizedboxheight(20.0),
                  yourcity(model),
                  sizedboxheight(6.0),
                  procidecheckbox(context, model),
                  sizedboxheight(22.0),
                  proceedbtn(context, model),
                ],
              )),
            );
          }),
        ),
         bgplaceholder()
      ],
    );
  }
}
