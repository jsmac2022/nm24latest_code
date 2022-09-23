// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/commonwidgets.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:provider/provider.dart';

import 'completeprofilemodelpage.dart';
import 'completeprofilewidgetpage.dart';

class CompleteProfilePage extends StatelessWidget {
  const CompleteProfilePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<CompleteProfileModelPage>(builder: (context, model, _) {
      return WillPopScope(
        onWillPop: ()=> model.decresestep(),
        child: Stack(
          children: [
            Scaffold(
              //  extendBodyBehindAppBar: true,
               
              appBar: appbarbackbutton(context, 'Complete Profile'),
              body: Container(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                width: deviceWidth(context, 1.0),
                child: Consumer<CompleteProfileModelPage>(builder: (context, model, _) {
                  return SingleChildScrollView(
                      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                          sizedboxheight(10.0),
                        linearprogressindicator(model),
                        sizedboxheight(22.0),
                        steprs(context, model),
                        model.progressStep != 7
                            ? Column(
                                children: [
                                  furtherpicbtn(context,model),
                                  sizedboxheight(22.0),
                                  savepicbtn(context, model),
                                ],
                              )
                            : Container()
                      ],
                    ),
                  );
                }),
              ),
            ),
    bgplaceholder()
          ],
        ),
      );
    });
  }
}
