// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/service/health%20insurance/healthinsurancemodelpage.dart';
import 'package:provider/provider.dart';

class InsuranceClaimPage extends StatelessWidget {
  const InsuranceClaimPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Stack(
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
         headingperawidget(context,'Cashless Claim Process'," tting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software like Aldus PageMaker including versions of Lorem Ipsum"),

   sizedboxheight(10.0),
   headingperawidget(context, '1. Find the network hospital', "Call on 1800-425-2255 / 1800-10204477"),
        sizedboxheight(10.0),
   headingperawidget(context, 'Inform the insurer', " tting, remaining essentially unchanged. It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing  \n \n software like Aldus PageMaker including versions of Lorem Ipsum About Insurance',text ever About Insurance',Find the network hospital', Call on 1800-425-2255 / 1800-10204477 text ever "),
        sizedboxheight(10.0),
   headingperawidget(context, 'Pre-authorization', "About Insurance',It was popularised in the 1960s with the release of Letraset sheets containing Lorem Ipsum passages, and more recently with desktop publishing software  \n \n like Aldus PageMaker including versions of Lorem Ipsum About Insurance',text ever About Insurance',Find the network hospital', Call on 1800-425-2255 / 1800-10204477 text ever text ever About Insurance',text ever "),
        sizedboxheight(10.0),
   headingperawidget(context, 'Discharge', "PageMaker including versions of Lorem Ipsum About Insurance',text ever About Insurance',Find the network hospital', Call on 1800-425-2255 / 1800-10204477 text ever text ever About Insurance',text ever  "),
        sizedboxheight(10.0),
   headingperawidget(context, 'Claim settlement', "PageMaker including versions of Lorem Ipsum About Insurance',text ever About Insurance',Find the network hospital', Call on 1800-425-2255 / 1800-10204477 text ever text ever About Insurance',text ever  "),
        sizedboxheight(10.0),
 
  
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