// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:provider/provider.dart';
import 'insuranceformodelpage.dart';
import 'insuranceformwidgetpage.dart';

class InsuranceFormPage extends StatelessWidget {
  const InsuranceFormPage({Key? key}) : super(key: key);

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
  Text('Insured Details',style: textstyletitleHeading6(context),),
        sizedboxheight(15.0),
  Text('Member 1 - (Self) . 26 Years',style: textstylesubtitle1(context),),
        sizedboxheight(15.0),
  hfullname(model),
        sizedboxheight(15.0),
         materialstatusdropdoun( context, model),
        sizedboxheight(15.0),
        heightwidgrt(context,model),
        sizedboxheight(15.0),
  weightkg(model),
        sizedboxheight(15.0),
        occupationdropdoun(context, model) ,
         sizedboxheight(15.0),
         gender1dropdown(context, model),
          
          sizedboxheight(15.0),
          relationshipdropdown(context, model),
          sizedboxheight(15.0),
          selectdobform(context, model),
          sizedboxheight(15.0),
          submitinsuranceformbtn(context, model),

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