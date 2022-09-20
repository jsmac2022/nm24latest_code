// ignore_for_file: prefer_const_constructors, prefer_const_literals_to_create_immutables

import 'package:custom_radio_grouped_button/custom_radio_grouped_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:group_radio_button/group_radio_button.dart';
import 'package:nm24/common/commonwidgets/button.dart';
import 'package:nm24/common/formtextfield/mytextfield.dart';
import 'package:nm24/common/styles/const.dart';


Widget page1(context, model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      headertext11(),
      sizedboxheight(22.0),
      fname1(),
      sizedboxheight(22.0),
      postalcodecity1(),
      sizedboxheight(22.0),
      streetnumber(),
      sizedboxheight(22.0),
      phonenumber(),
      sizedboxheight(22.0),
      pdob1(context, model),
      sizedboxheight(22.0),
      nationlity(context, model),
      sizedboxheight(22.0),
      incresechance(context, model),
      sizedboxheight(22.0),
      anotherlorem(model),
      sizedboxheight(22.0),
      furbtn(model),
      sizedboxheight(22.0),
    ],
  );
}

Widget headertext11() {
  return Text(
    'Let\'s start filling out of \n your application dossier...',
    style: TextStyle(fontSize: 22, color: Colors.black87, fontWeight: FontWeight.bold),
  );
}

Widget fname1() {
  return AllInputDesign(
    inputHeaderName: 'Full Name',
    key: Key("email1"),
    textInputAction: TextInputAction.next,
    elevation: 0.4,
  );
}

Widget postalcodecity1() {
  return AllInputDesign(
    inputHeaderName: 'Postal Code and City',
    key: Key("Postal"),
    textInputAction: TextInputAction.next,
    elevation: 0.4,
  );
}

Widget streetnumber() {
  return AllInputDesign(
    inputHeaderName: 'Street and number',
    key: Key("Postal11"),
    textInputAction: TextInputAction.next,
    elevation: 0.4,
  );
}

Widget phonenumber() {
  return AllInputDesign(
    inputHeaderName: 'Phone Number',
    key: Key("Posta"),
    textInputAction: TextInputAction.next,
    inputFormatterData: [
      FilteringTextInputFormatter.allow(RegExp(r'[0-9]')),
    ],
    keyboardType: TextInputType.number,
    elevation: 0.4,
  );
}

Widget pdob1(context, model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Date Of Birth',
        style: textstyletitleHeading6(context),
      ),
      sizedboxheight(8.0),
      InkWell(
        onTap: () {
          model.selectDate(context);
        },
        child: SizedBox(
          width: deviceWidth(context, 1.0),
          child: AllInputDesign(
            textInputAction: TextInputAction.next,
            key: Key("dob"),
            enabled: false,
            labelText: model.gettext(),
            floatingLabelBehavior: FloatingLabelBehavior.never,
            hintText: 'DD-MM-YYYY',
            suffixIcon: Icon(
              Icons.calendar_today_outlined,
              color: Colors.grey,
              size: 20,
            ),
            keyBoardType: TextInputType.emailAddress,
            //  validatorFieldValue: 'name12',
            // validator: validateAreaName,
          ),
        ),
      ),
    ],
  );
}

Widget nationlity(context, model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Nationality',
        style: TextStyle(
          fontSize: 16,
          color: Colors.black87,
        ),
      ),
      sizedboxheight(5.0),
      CustomRadioButton(
        enableShape: true,
        // horizontal: true,
        radius: 10,
        shapeRadius: 10,
        width: deviceWidth(context, 0.45),
        height: 55,
        elevation: 0,
        radioButtonValue: (value) {
          model.toggleselectgender(value);
        },
        buttonValues: [
          "Switzerland",
          "Other city",
        ],
        buttonLables: [
          "Switzerland",
          "Other city",
        ],
        selectedColor: colorredlight,
        unSelectedColor: colorWhite,
        buttonTextStyle:
            ButtonTextStyle(selectedColor: colorWhite, unSelectedColor: colorblack, textStyle: TextStyle(fontSize: 16)),
      ),
    ],
  );
}

Widget incresechance(context, model) {
  return Container(
    // height: 500,
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
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Increase Your Chance',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        Text(
          'The following information is voluntary. But you may increase Your chances of being accepted.',
          textAlign: TextAlign.start,
          style: TextStyle(
            fontSize: 13,
            fontStyle: FontStyle.normal,
            color: Colors.black87,
          ),
        ),
        Divider(),
        Text(
          'Civil status',
          textAlign: TextAlign.center,
          style: TextStyle(fontSize: 13, color: Colors.black, fontWeight: FontWeight.bold),
        ),
        sizedboxheight(10.0),
        radiogroup1(model),
        sizedboxheight(10.0),
        hometown(),
      ],
    ),
  );
}

Widget radiogroup1(model) {
  return RadioGroup<String>.builder(
    activeColor: colorredlight,
    horizontalAlignment: MainAxisAlignment.start,
    groupValue: model.radio1,
    onChanged: (value) {
      model.toogleradiobtn(value);
    },
    items: model.radiobtnLabellist,
    itemBuilder: (item) => RadioButtonBuilder(
      item,
    ),
  );
}

Widget hometown() {
  return AllInputDesign(
    inputHeaderName: 'Hometown',
    key: Key("Postal10"),
    textInputAction: TextInputAction.next,
    elevation: 0.4,
  );
}

Widget anotherlorem(model) {
  return Column(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Text(
        'Another Lorem',
        textAlign: TextAlign.center,
        style: TextStyle(fontSize: 17, color: Colors.black, fontWeight: FontWeight.bold),
      ),
      sizedboxheight(10.0),
      Text(
        'How many people are applying?',
        style: TextStyle(
          fontSize: 15,
          color: Colors.black87,
        ),
      ),
      sizedboxheight(10.0),
      radiogroup2(model),
      sizedboxheight(10.0),
      Text(
        'If a second person applies, we also need the following Information. Make sure you get this I agree to state this here and forward it to the landlord.',
        style: TextStyle(
          fontSize: 15,
          color: Colors.black87,
        ),
      ),
    ],
  );
}

Widget radiogroup2(model) {
  return RadioGroup<String>.builder(
    activeColor: colorredlight,
    horizontalAlignment: MainAxisAlignment.start,
    groupValue: model.radio2,
    onChanged: (value) {
      model.toogleradiobtn2(value);
    },
    items: model.radiobtnLabellist2,
    itemBuilder: (item) => RadioButtonBuilder(
      item,
    ),
  );
}

Widget furbtn(model) {
  return Button(
    buttonName: 'Further',
    onPressed: () {
      model.incresestep();
    },
  );
}
