// ignore_for_file: prefer_const_constructors, prefer_const_constructors_in_immutables, avoid_print

import 'package:flutter/material.dart';
import 'package:nm24/common/appbar/appbarbackbutton.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/styles/const.dart';
import 'package:provider/provider.dart';
import 'lokongconsultantmodelpage.dart';

class LookingForCounsaltantPage extends StatefulWidget {
  LookingForCounsaltantPage({Key? key}) : super(key: key);

  @override
  State<LookingForCounsaltantPage> createState() => _LookingForCounsaltantPageState();
}

class _LookingForCounsaltantPageState extends State<LookingForCounsaltantPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: appbarbackbutton(context, 'I m Intrested In'),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 15),
        width: deviceWidth(context, 1.0),
        height: deviceheight(context, 1.0),
        child: Consumer<LookingconsultantModelPage>(builder: (context, model, _) {
          return SingleChildScrollView(
            child: Column(
              children: [
                multiselectlistwidget(model),
                sizedboxheight(22.0),
                Button(
                  onPressed: () {},
                  buttonName: 'Looking for a consultant',
                ),
                // Text(model.selectmulti.toString())
              ],
            ),
          );
        }),
      ),
    );
  }
}

ListView multiselectlistwidget(model) {
  return ListView.builder(
      shrinkWrap: true,
      itemCount: model.favmovie.length,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 10.0),
          child: Material(
            borderRadius: BorderRadius.circular(11),
            color: colorWhite,
            child: InkWell(
                onTap: () async {},
                child: Container(
                  padding: EdgeInsets.all(5.0),
                  // height: 50,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      // color: Colors.transparent,
                      boxShadow: boxShadowcontainer(),
                      borderRadius: BorderRadius.circular(11),
                      border: borderCustomlight()),
                  child: model.favmovie[index].subtitle != ''
                      ? listtilewithsubtitle(model, index, context)
                      : listtilewithoutsubtitle(model, index, context),
                )),
          ),
        );
      });
}

ListTile listtilewithsubtitle(model, int index, BuildContext context) {
  return ListTile(
    dense: true,
    minLeadingWidth: 5,
    title: Text(
      model.favmovie[index].title,
      style: textstyletitleHeading6(context),
    ),
    subtitle: Text(
      model.favmovie[index].subtitle,
      style: textstylesubtitle1(context),
    ),
    trailing: Transform.scale(
      scale: 1.5,
      child: intestedcheckboxwidget(model, index),
    ),
  );
}

ListTile listtilewithoutsubtitle(model, int index, BuildContext context) {
  return ListTile(
    dense: true,
    minLeadingWidth: 5,
    title: Text(
      model.favmovie[index].title,
      style: textstyletitleHeading6(context),
    ),
    trailing: Transform.scale(
      scale: 1.5,
      child: intestedcheckboxwidget(model, index),
    ),
  );
}

Checkbox intestedcheckboxwidget(model, int index) {
  return Checkbox(
      activeColor: colorskyblue,
      shape: CircleBorder(),
      value: model.favmovie[index].isSelect,
      onChanged: (s) {
        print('vinay${model.favmovie[index].isSelect} ');
        model.toggleCheckbox(index);
      });
}
