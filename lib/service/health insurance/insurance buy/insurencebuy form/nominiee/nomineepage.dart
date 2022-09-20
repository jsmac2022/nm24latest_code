// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:nm24/service/health%20insurance/insurance%20buy/insurencebuy%20form/nominiee/nomineemodelpage.dart';
import 'package:provider/provider.dart';
import '../insuranceformwidgetpage.dart';
import 'nomineewidgetpage.dart';

class NomineePage extends StatelessWidget {
  const NomineePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
       onTap: () => FocusScope.of(context).unfocus(),
      child: Stack(
        children: [
          Scaffold(
            appBar: appbarbackbutton(context, 'Health Insurance'),
            body: Consumer<NomineeModelPage>(builder: (context, model, _) {
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
          nomineefullname(model),
          sizedboxheight(15.0),
           nomineerelation(model),
          sizedboxheight(15.0),
           nomineegender(model),
          sizedboxheight(15.0),
          selectnomineebdate(context, model),
            sizedboxheight(32.0),
            submitnomineetbtn(context, model) ,
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