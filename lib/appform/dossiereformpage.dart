// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/appform/dossieremodelpage.dart';
import 'package:nm24/appform/pages/page1.dart';
import 'package:nm24/appform/pages/page2.dart';
import 'package:nm24/appform/pages/page3.dart';
import 'package:nm24/appform/pages/page4.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:provider/provider.dart';
import 'dossierwigetpage.dart';

class DossierFormPage extends StatelessWidget {
  const DossierFormPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<DossierFormModelPage>(builder: (context, model, _) {
      return WillPopScope(
        onWillPop: ()=> model.decresestep(),
        child: GestureDetector(
             onTap: () => FocusScope.of(context).unfocus(),
          child: Scaffold(
          appBar: PreferredSize(
            preferredSize: Size.fromHeight(100.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                sizedboxheight(27.0),
                appbarimage(context),
                   Container(
                     padding: EdgeInsets.symmetric(horizontal: 10),
                     child: linearprogressindicatorform(model)) ,
              ],
            )),
            body: Container(
              padding: const EdgeInsets.symmetric(horizontal: 15),
              width: deviceWidth(context, 1.0),
                          child:  SingleChildScrollView(
            physics: ScrollPhysics(),
                      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              if (model.progressStep == 1)
          page1(context, model)
              else if (model.progressStep == 2)
          page2(context, model)
              else if (model.progressStep == 3) 
              page3(context, model) 
             else if (model.progressStep == 4)
          page4(context, model),
            ]),
          )
            ),
          ),
        ),
      );
    });
  }
}
