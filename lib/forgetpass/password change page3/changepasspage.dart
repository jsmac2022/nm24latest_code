
// ignore_for_file: avoid_print, prefer_typing_uninitialized_variables, prefer_const_constructors, deprecated_member_use, prefer_const_constructors_in_immutables

import 'package:flutter/material.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:provider/provider.dart';
import 'changepassmodelpage.dart';
import 'changepasswidgetpage.dart';

class ChangePassPage extends StatelessWidget {
  ChangePassPage({Key? key, this.userid}) : super(key: key);
  
  final userid;
  @override
  Widget build(BuildContext context) {
    print('vinay15 $userid');
    return GestureDetector(
         onTap:()=> FocusScope.of(context).unfocus(),
      child: Stack(
        children: [
          Scaffold(
            body: Consumer<ChangePassModelPage>(builder: (context, model, _) {
              return Form(
                key: model.formKey,
            autovalidateMode: AutovalidateMode.onUserInteraction,
                child: SingleChildScrollView(
                         keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
                  child: Column(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      sizedboxheight(deviceheight(context, 0.15)),
              
                      Container(
                          padding: EdgeInsets.all(padding20),
                          width: deviceWidth(context, 1.0),
                          decoration: decorationtoprounded(),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              iconTextWidget2(context, 'CHANGE YOUR PASSWORD'),
                                    sizedboxheight(20.0),
                           textwrite2(context),
                              sizedboxheight(32.0),
                              newPasswordwidget(model),
                              sizedboxheight(25.0),
                              confirmPasswordwidget(model),
                              sizedboxheight(30.0),
                              newpasssavebtn(
                                  context, model, userid),
                            ],
                          )),
                    ],
                  ),
                ),
              );
            }),
          ),
            Align(alignment: Alignment.topRight,
                        child: Container(
                          margin: EdgeInsets.only(top: 25),
                          width: 200,
                        height: 200,
                                        child: Image(image:  AssetImage('assets/images/bg.png'),fit: BoxFit.contain),
                        ),
                      ),
        ],
      ),
    );
  }
}
