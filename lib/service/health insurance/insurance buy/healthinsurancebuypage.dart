// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:provider/provider.dart';
import '../healthinsurancemodelpage.dart';
import 'insurancebuywidgetpage.dart';

class HealthInsuranceBuyPage extends StatelessWidget {
  const HealthInsuranceBuyPage({Key? key}) : super(key: key);

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
           showplanheader(context),
           sizedboxheight(10.0),
            buyinsurancewidget(context) ,
  
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