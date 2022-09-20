// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:provider/provider.dart';
import '../insuranceformodelpage.dart';
import '../insuranceformwidgetpage.dart';
import 'madicalqutwidgetpage.dart';

class MedicalQustionPage extends StatelessWidget {
  const MedicalQustionPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        Scaffold(
          appBar: appbarbackbutton(context, 'Health Insurance'),
          body: Consumer<InsuranceForModelPage>(builder: (context, model, _) {
                    return Container(
              width: deviceWidth(context, 1.0),
              height: deviceheight(context, 1.0),
              padding: EdgeInsets.all(15.0),
              child: SingleChildScrollView(
                  child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
        headerinsuranceform(context),
  sizedboxheight(15.0),
  Text('Medical Questionnaire',style: textstyletitleHeading6(context),),
        sizedboxheight(15.0),
  Text('Member 1 - Self',style: textstylesubtitle1(context),),
        sizedboxheight(15.0),
        madicalqutradiobtn(context,model),
          sizedboxheight(15.0),
          submitmedqutbtn(context, model)

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