// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:nm24/appform/pages/page1.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/styles/const.dart';

Widget page2(context, model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      headertext111(),
      sizedboxheight(22.0),
      radiogroupp2(model),
      sizedboxheight(22.0),
      collagestudent(),
      sizedboxheight(22.0),
      employer(),
      sizedboxheight(22.0),
      sallerydropdown(context, model),
      sizedboxheight(22.0),
      radioquestionp2(context, model),
      sizedboxheight(22.0),
      colorboxcontaioner(context,model),
      sizedboxheight(22.0),
      twobtn(model),
      sizedboxheight(22.0),
    ],
  );
}

Widget headertext111() {
  return Text(
    'Civil Status',
    style: TextStyle(fontSize: 22, color: Colors.black87, fontWeight: FontWeight.bold),
  );
}

Widget radiogroupp2(model) {
  return RadioGroup<String>.builder(
    activeColor: colorredlight,
    horizontalAlignment: MainAxisAlignment.start,
    groupValue: model.radiop2,
    onChanged: (value) {
      model.toogleradiobtnp2(value);
    },
    items: model.radiobtnLabellistp2,
    itemBuilder: (item) => RadioButtonBuilder(
      item,
    ),
  );
}

Widget collagestudent() {
  return AllInputDesign(
    inputHeaderName: 'College Student',
    key: Key("Postal10"),
    textInputAction: TextInputAction.next,
    elevation: 0.4,
  );
}

Widget employer() {
  return AllInputDesign(
    inputHeaderName: 'Employer',
    key: Key("emp"),
    textInputAction: TextInputAction.next,
    elevation: 0.4,
  );
}

Widget sallerydropdown(context, model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Annual gross income (CHF)',
        style: textstyletitleHeading6(context),
      ),
      sizedboxheight(8.0),
      Container(
        padding: EdgeInsets.symmetric(horizontal: 20),
        width: deviceWidth(context, 1.0),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(15), border: borderCustom()),
        child: DropdownButtonHideUnderline(
          child: DropdownButton<String>(
            focusColor: Colors.white,
            value: model.chosesallery,
            iconSize: 30,
            //elevation: 5,
            style: TextStyle(color: Colors.white),
            iconEnabledColor: Colors.black,
            items: model.sallerylist.map<DropdownMenuItem<String>>((value1) {
              return DropdownMenuItem<String>(
                value: value1,
                child: Text(
                  value1,
                  style: textstyletitleHeading6(context),
                ),
              );
            }).toList(),
            hint: Text(
              // modelprofileview.userdataMap['country'].toString() == 'null'
              //     ? 'Contry'
              //     : modelprofileview.userdataMap['country'].toString(),
              'Income',
              style: textstyletitleHeading6(context),
            ),
            onChanged: (value) {
              model.togglesallery(value);
            },
          ),
        ),
      ),
    ],
  );
}

Widget radioquestionp2(context, model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text('where they operated or were there open Loss certificates in your name?',
          style: textstyletitleHeading6(context)),
      sizedboxheight(8.0),
      Text('The last two years are decisive.', style: textstylesubtitle1(context)),
      radiogroup2p2(model),
    ],
  );
}

Widget radiogroup2p2(model) {
  return RadioGroup<String>.builder(
    direction: Axis.horizontal,
    activeColor: colorredlight,
    horizontalAlignment: MainAxisAlignment.start,
    groupValue: model.radio2p2,
    onChanged: (value) {
      model.toogleradiobtnp22(value);
    },
    items: model.radiobtnLabellistp22,
    itemBuilder: (item) => RadioButtonBuilder(
      item,
    ),
  );
}

Widget colorboxcontaioner(context,model) {
  return Container(
    width: deviceWidth(context, 1.0),
    padding: const EdgeInsets.all(10.0),
    decoration: BoxDecoration(
      borderRadius: BorderRadius.circular(10),
      color: Colors.pink.withOpacity(0.1),
      border: Border.all(
        color: Colors.black12,
        width: 1,
      ),
    ),
    child: Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Increase Your Chance',
          style: textstyletitleHeading6(context),
        ),
        sizedboxheight(8.0),
        Text('The following information is voluntary. But you may increase Your chances of being accepted.',
            style: textstylesubtitle1(context)!.copyWith(color: colorblack)),
        Divider(),
        Text('Reference contact with the employer',
            textAlign: TextAlign.center, style: textstyletitleHeading6(context)),
        sizedboxheight(8.0),
        Text('The following information is voluntary. But you may increase Your chances of being accepted.',
            textAlign: TextAlign.start, style: textstylesubtitle1(context)!.copyWith(color: colorblack)),
        sizedboxheight(20.0),
        fname1(),
        sizedboxheight(20.0),
        phonenumber(),
           sizedboxheight(20.0),
        checkboxTC1(context, model)

      ],
    ),
  );
}

Widget checkboxTC1(context, model) {
  return Row(
    children: [
      Checkbox(
              shape: RoundedRectangleBorder(
    borderRadius: BorderRadius.circular(5)),
        value: model.checkboxpage2,
        onChanged: (value) {
          model.toggleCheckbox();
        },
        activeColor: colorskyblue,
      ),
      sizedboxwidth(5.0),
      SizedBox(
        width: deviceWidth(context, 0.7),
        child: Text(
          'I authorize the landiord to participate this contact reference information to catch up',
          overflow: TextOverflow.ellipsis,
          maxLines: 3,
          style: textstylesubtitle1(context)!.copyWith(fontSize: 14,color: colorblack),
        ),
      ),
    ],
  );
}

Widget twobtn(model) {
  return Column(
    children: [
      Button(
        buttonName: 'Further',
        onPressed: () {
          model.incresestep();
        },
      ),
      sizedboxheight(28.0),
      Button(
        buttonName: 'Return',
        btnColor: colorWhite,borderColor: colorredlight,textColor: colorredlight,
        onPressed: () {
          model.decresestep();
        },
      )
    ],
  );
}

