// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:provider/provider.dart';
import '../insuranceformwidgetpage.dart';
import 'policebazamodelpage.dart';
import 'policebazarwidgetpage.dart';

class PolicebazarPage extends StatelessWidget {
  const PolicebazarPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () => FocusScope.of(context).unfocus(),
      child: Stack(
        children: [
          Scaffold(
            appBar: appbarbackbutton(context, 'Health Insurance'),
            body: Consumer<PoliceModelPage>(builder: (context, model, _) {
                      return Container(
                width: deviceWidth(context, 1.0),
                height: deviceheight(context, 1.0),
                padding: EdgeInsets.all(15.0),
                child: SingleChildScrollView(
                   keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
          headerinsuranceform(context),
          sizedboxheight(15.0),
          Text('Nominee Details',style: textstyletitleHeading6(context),),
          sizedboxheight(15.0),
          Text('Member 1 - Self',style: textstylesubtitle1(context),),
          sizedboxheight(15.0),
          salutationdropdown(context, model),
          sizedboxheight(15.0),
          pfullname(model),
          sizedboxheight(15.0),
          pmobile(model),
          sizedboxheight(15.0),
          pdob(context, model) ,
          sizedboxheight(15.0),
          pemail(model),
          sizedboxheight(15.0),
           pmaterialstatusdropdoun(context, model),
          sizedboxheight(15.0),
           poccupationdropdoun(context, model),
          sizedboxheight(15.0),
           pgender1dropdown(context, model),
          sizedboxheight(22.0),
          Text('Communication Address',style: textstyletitleHeading6(context),),
          sizedboxheight(15.0),
           paddaddressbtn(context, model),
             
            polocicheckbox(context, model),
               sizedboxheight(15.0),
               ppaybtn(context, model),
                  sizedboxheight(15.0),
  
    
                  ],
                )),
              );
            }),
          ),
           bgplaceholder()
        ],
      ),
    );
  }
}